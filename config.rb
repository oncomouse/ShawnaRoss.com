###
# Compass
###

set :markdown_engine, :kramdown
set :markdown, :fenced_code_blocks => true,
               :autolink => true, 
               :smartypants => true,
               :footnotes => true,
               :superscript => true

# Change Compass configuration
compass_config do |config|
#   config.output_style = :compact
    config.line_comments = false
end

activate :syntax
# activate :similar

set :disqus_name, "shawnarossblog"

set :site_deploy_root, "http://www.shawnaross.com"

require "bourbon"
require "susy"
require "breakpoint"
require 'compass-normalize'

require "lib/custom_haml_markdown.rb"

parse_files = Dir.entries("#{Dir.pwd}/source/slides")

while parse_files.length > 0
    file = parse_files.shift
    next if file =~ /^\./
    next if file =~ /remark_base/
    

    
    if file =~ /(\.markdown|\.md)$/# or File.extname(file) == ".md"
        markdown_source = File.open("#{Dir.pwd}/source/slides/#{file}").read
        if markdown_source =~ /^---/
            yaml_options = YAML.load markdown_source.split(/---/)[1]
        else
            yaml_options = {}
        end
        proxy "/slides/#{file.sub(File.extname(file), "")}", "/slides/remark_markdown_template.html", :locals => {:markdown_source => file, :yaml_options => yaml_options}
    end 
    
	if File.directory? "#{Dir.pwd}/source/slides/#{file}" and !(file =~ /(javascripts|stylesheets|images|fonts|layouts)/) and !(file =~ /^\./)
        proxy "slides/#{file}/index.html", "slides/index.html", :locals => {:directory => file}
        parse_files += Dir.entries("#{Dir.pwd}/source/slides/#{file}").map! { |x| if x =~ /^\./ then nil else "#{file}/#{x}" end }
        parse_files.compact!.uniq!
	end
end

ready do
	ignore "/**/*.yml"
    ignore "/slides/remark_markdown_template.html"
end

###
# Page options, layouts, aliases and proxies
###

page "*", :layout => "layout"

###
# Helpers
###

helpers do
	def javascript_path(file_path)
		asset_path(:js, file_path)
	end
	
	# Build navigation links in which the active page is highlighted:
	def navigation_link_to(txt, url)
		page_index = request["path"].gsub("index.html","")
		
		if url == "/#{page_index}"
			return link_to(txt, url, :class => "active")
		end
		link_to(txt,url)
	end
    
    def image_link(source, options={})
        link_to(image_tag(source, options), image_path(source))
    end
    
    def blog_link(txt, key)
        link_to txt, blog_url(key)
    end
    
    def blog_url(key)
        object = blog.articles.find{ |article| article.title.downcase.include? key.downcase or article.url.include? key}
        if object.respond_to? :url
            object.url
        else
            ""
        end
    end
end

class Middleman::Sitemap::Resource
	def first_paragraph
		nokogiri_doc = Nokogiri::HTML(self.body)
		
		return nokogiri_doc.css("p").first.to_s
	end
end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

#activate :directory_indexes
page "/blog/*", :layout => :blog_article
page "/posts/*", :layout => :blog_article

set :haml, { :ugly => true, :format => :html5 }

activate :blog do |blog|
  blog.prefix = ""
  # blog.permalink = ":year/:month/:day/:title.html"
  blog.sources = "posts/:year-:month-:day-:title.html"
  blog.taglink = "tag/:tag.html"
  blog.year_link = ":year/index.html"
  blog.month_link = ":year/:month/index.html"
  blog.day_link = ":year/:month/:day/index.html"
  blog.layout = "blog_article"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = ":year.html"
  # blog.month_link = ":year/:month.html"
  # blog.day_link = ":year/:month/:day.html"
  blog.default_extension = ".md"
  
  set :blog_author, "Shawna Ross"
  set :blog_title, "Shawna Ross Blog"

  blog.tag_template = "blog/tag.html"
  blog.calendar_template = "blog/calendar.html"

  blog.paginate = true
  blog.per_page = 6
  # blog.page_link = "page/:num"
end

activate :directory_indexes
page "/cv.html", :directory_index => false
page "/teaching.html", :directory_index => false
page "/research.html", :directory_index => false
page "/search.html", :directory_index => false
page "/slides/**/*", :directory_index => false
page "/slides/*", :directory_index => false
page "/files/*", :directory_index => false
#page "/blog/feed.xml", :layout => false
#page "/blog/rss.xml", :layout => false

# Build-specific configuration
configure :build do
  ignore "/courses/*"
  ignore "blog_old/*"
  ignore "stylesheets/blog-old/*"
  #ignore "/research/*"
  ignore "/**/*.rb"
  ignore "files"
  #set :http_prefix, "/new2"
  # Change this to build with a different file root.	
  #set :http_prefix, "/my/prefix/folder"

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  #activate :gzip

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  #activate :relative_assets

  # Compress PNGs after build
  # I wouldn't use this.
  #activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end

# Implement a static directory named "files" in source:
after_build do |builder|
    builder.source_paths << File.dirname(__FILE__)
    
    output_dir = File.join(config[:build_dir],'files')
    source_dir = File.join(config[:source], 'files')
    
    files = Dir.glob(File.join(source_dir,'**','*'))
    
    Dir.mkdir output_dir if not Dir.exists? output_dir
    
    files.each do |file|
        builder.copy_file(file, file.sub(source_dir, output_dir))
    end
end

activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.user = "shawnaross"
  deploy.host = "birkenfeld.dreamhost.com"
  deploy.path = "~/www/shawnaross.com/"
end
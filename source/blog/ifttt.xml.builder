---
layout: false
---
xml.instruct! :xml, :version => '1.0'
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
	xml.title config[:blog_title]
	xml.id "#{config[:site_deploy_root]}"
	xml.link "href" => "#{config[:site_deploy_root]}/blog/"
	xml.link "href" => "#{config[:site_deploy_root]}/blog/feed.xml", "rel" => "self"
	if blog.articles.length > 0
        xml.updated blog.articles.first.date.to_time.iso8601
    end
	xml.author { xml.name config[:blog_author] }
	#xml.language('en-us')

	blog.articles[0..5].each do |article|
		xml.entry do
			xml.title article.title
			xml.link "rel" => "alternate", "href" => "#{config[:site_deploy_root]}" + article.url
			xml.id "#{config[:site_deploy_root]}" + article.url
			xml.published article.date.to_time.iso8601
			xml.updated article.date.to_time.iso8601
			xml.author { xml.name config[:blog_author] }
			xml.content ((if article.data.has_key? "description" then Haml::Filters::Markdown.render(article.data["description"]+ link_to( "[...]", "#{config[:site_deploy_root]}#{article.url}")) else article.summary + link_to( "[...]", "#{config[:site_deploy_root]}#{article.url}") end)), "type" => "html"
		end
	end
end
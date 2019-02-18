---
title: Open Modernisms, Part III
date: 2014-12-01 17:13 UTC
tags: Open Modernism, Claire Battershill, Chris Forster, Andrew Pilsch, Matt Huculak, Stephen Ross
---

_In this five-part series of blog posts, I am recounting, by way of documentation, the process by which the modernist community has begun to create a free, digital anthology of modernism. This installment summarizes the email exchanges among Claire Battershill, Chris Forster, Andrew Pilsch, and myself between November 10th and 14th, when I sent a summary email to the entire board._

Over four days in mid-November, Claire, Chris, Andrew, and I furiously exchanged emails that shaped the amorphous visions conjured during the face-to-face meeting at the MSA conference into a loosely cohering set of principles and problems. This "subcommittee" work was valuable because we were able to reframe the project, taking it beyond the original, intuited, wispy ideas exchanged on the MSA email list and at the MSA conference meeting. In the first email to Claire, Chris, and Andrew, I summarized what was established at that meeting (this information is covered in Part II of this blog post series). We then proceeded to debate issues of

1. *Anthology Purpose:* Do we focus on pedagogy or research? How do we balance these needs?
1. *Anthology Scope:* Which texts? Which genres? How many?
1. *Input Formats:* Where will we source our texts? Which editions (first edition only?) and which file formats (scanned images?) Which inputs will be appropriate for copyright law?
1. *Output Formats:* Which file formats will be available to end users?
1. *Scholarly Apparatus:* How will we deal with metadata, variants, errors, translations of foreign phrases, and other editorial notes? To what degree will we show them to end users?
1. *Participants:* Who can suggest texts to be covered in the anthology? Who can submit images of first editions? Who will process that image into whatever final encoded format we will support?
1. *Institutional Support:* Do we accept financial support from various institutions? How can we recompense labor that seems out of the normal run of modernist scholarship while not becoming unduly responsible for meeting those institutions' expectations and guidelines?

In the process of hammering these issues out, a number of practical steps were taken: Matt Huculak converted our informal wish list into a beautiful, detailed spreadsheet; Andrew began to create mock-ups of our eventual website; Chris began to create a proof-of-concept showing a sample custom coursepack; both Andrew and Chris began to construct prototypes for sample texts by Mina Loy, Virginia Woolf, and Ezra Pound. Armed with these concrete deliverables, we approached the larger board with an email that 1) summarized our conclusions, 2) gave a detailed breakdown of the conversations, and 3) provided a list of questions for which we wanted specific input.

## Overview: purpose, scope, formats

Claire, Chris, Andrew, and I kept coming back to the need of maintaining focus: if we know _what_ we are doing, then answers to questions of _how_ should (more or less) naturally follow. Generally, our "core" sense of the project's purpose runs as follows: This anthology will provide a selection of “primary secondary” works: texts written during the era of modernism that are generally critical in nature—essays and manifestos rather than novels or poems—so that instructors of courses on modernisms can freely access and share to their students the foundational (and emerging, nontraditional) texts of modernism. These works will be thoroughly edited and vetted to a standard high enough to guarantee their accuracy. 

Works will ideally be made in a variety of formats to accommodate multiple modes of instruction (responsive HTML for reading in browser, whether on smartphone or laptop or desktop; PDF for using printouts, etc). Each document will visually appear similar enough to other documents in the anthology to create a consistent feel (except where appropriate, e.g., BLAST). Instructors will be able to select individual works to assemble their own coursepacks, with consistent internal pagination, which students can download for free (and print, if desired). As Claire summarized it, our primary goal is

> for the instructor to have the ability to stitch a custom sequence of texts together and output them uniformly so that all the students would have the same pack, ideally with the same pagination.

To make all of our texts "uniform," Markdown was championed by Andrew and myself because it is very quick to learn; my undergraduates create “scholarly editions” in it all the time. Templates and stylesheets (Bootstrap for CSS and layout) that will apply to any text of a specific genre (essay, poem, etc) will take care of sticky presentation issues. We decided to begin with the assumption of using YAML for our metadata, which will be stored in a single file with the Markdown-encoded text. (YAML has the benefit of being used in Pandoc and Middleman.)

With these kinds of differences of opinion, we kept returning to the necessity of keeping our core values clear and present throughout this process. As Chris has insisted, 

> The real goal here would not be a piece of software, or a set of software, or a workflow, but a set of files containing well-edited, well-represented, bibliographically sound texts, and some software to transform them as necessary.

Consequently, Andrew has advocated for using a set of pre-existing applications that have ample documentation and are used in the web development world (meaning that they are reliable). This will make the infrastructure generally “Markdown + a set of things," meaning that editors will hand-code plain text into Markdown, a very simple HTML preprocessor, and then those Markdown files will be subjected to a set of processes that will create the HTML output, the PDF output, and eventually, customized courspacks. We want to limit custom code, though it will be needed at the web presentation level (templates/stylesheets).

## Pagination/PDF Conundrum

As noted above, each coursepack will ideally boast its own sequential, internally consistent pagination so that instructors may reliably refer to page numbers during class. Stephen in particular is championing a "drag and drop" interface that would result in a single PDF anthology that instructors can direct students to, while I suggested a system in which instructors view a list of texts and check boxes next to desired texts (allowing students then to access their instructors' list of desired texts through some sort of login/user setup). However, due to how extremely difficult this internal pagination is for a unified on-demand PDF file, it brought into question our commitment to PDF. It was noted that CSS print stylesheets could ensure correct printing without needing PDF conversion, but we ultimately concluded, as I reiterated,

> that PDF output IS important, especially insofar as it enables the mix-and-match coursepack model that really must be our (first) endgame. The anthology is not an anthology without this step of creating the coursepack. The anthology is not an anthology without the multiple outputs, giving power to individual instructors. 

We rejected the idea of ditching PDF altogether, as it’s necessary to fight against various browsers to reach the goal of consistency among various students in a classroom (whether they are using a print-out or screen). Paragraph numbers in PDF coursepack may have to suffice, as Andrew noted, in initial stages because 

> not only will the complexity become greater but the hosting costs will skyrocket. To do this kind of custom PDF conversion, we will need a fully hosted solution (a virtual private server or a full machine) so that we can run some kind of custom backend batch processor (which we would have to write) to convert documents as they come in via HTTP requests. This is not necessarily outside the realm of possibility, but it is going to be very complicated and all in the service of getting page numbers onto the PDF.

Still, paragraph numbers are not as fully functional as page numbers; you might ask your students to turn to Paragraph 878!) And, as Chris further argued,"Page numbers are part of it; but so is portability." Standardizing these texts---which is why we find Gutenberg and other existing free texts to be unacceptable, and why we want the option for outputs to be independent of the user's browser--is at the heart of the project.

## Who does what

Early on, we vetoed the idea of members of the public (e.g., the general modernist scholar and teacher community) being able to upload files directly to the site via a form, though Claire added that we should still allow public to fill out a form to _request a certain text_ to be added to the anthology. Claire agreed with my suggestion that we retain the open, online web form "as the public face of solicitation while still retaining Matt's spreadsheet for internal affairs." The requestor would be asked to provide as much bibliographic data as possible and might later be asked to provide images of first editions, if applicable. All texts available on the website will have gone through multiple gatekeeping processes.

Chris brilliantly suggested that the board splits into three (overlapping) groups:

> An editorial board, charged with deciding what texts to include (and wrangling with or adjudicating potential issues of competing versions; of deciding what falls within the purview of this project; deciding what is "public domain," etc).

> A technical committee that decides how to represent these texts (markdown? TEI?); who worries about the technologies to transform the texts into output formats; who standardizes the vocabularies we use to describe things; who develops a workflow that includes proofreading by multiple editors, etc.

> [Contributing] editors for each text: Each text in the anthology is edited by one person (or maybe a team of a couple) people, who is responsible for selecting a source text, for transcribing/OCRing/correcting a text, and submitting it to the technical committee for vetting.

As Chris noted, there could certainly be overlap (most of us might join two committees). I brought up the potential need for a _fourth_ personnel gropu: one to monitor “quality control” of the text beyond its technical fitness (e.g., it can be marked up correctly but may have typos or some inaccuracy that would be seen by a field expert). Such a need assumes that text should have a different person than the one who created it to ensure the accuracy of the transcription. My suggestion was not met with explicit approval, so I cannot vouch for its being an accepted principle or documented need. If my suggestion were not taken up, the general board would still, I believe, somehow be responsible for checking on the quality of the transcription and markup.

## Standards & scholarly apparatuses

I argued that, while this project will provide texts reliable enough for research, doing so is not its primary purpose, which is pedagogical. Decisions about the project should be made in accordance with privileging the needs of teachers and students over scholars if the needs of the two communities seem to encourage different choices. Chris and Claire, however, stressed that if we are doing this project well, the resultant texts _will_ be good enough for scholars. As Claire pointed out,

> these need to be good enough texts to stand up to basic research needs (a scholar should feel confident that they are reliable enough to quote from). I think it should be best practice for students to use that kind of quality of text anyway.  Otherwise what’s the point?

As we unpacked the ramifications of Claire's point, we have had lively discussions about the extent of scholarly apparatuses. On the one hand, we want visually simple documents that do not strike an undergraduate as particularly mysterious. On the other hand, accuracy may entail the reader knowing whether or not you’ve corrected a typo in the original or if there’s a variant. After strenuous debate, Chris has agreed that we can attempt to indicate these details without beginning the project with expectations of using TEI; Claire's suggestion that each submission begins with a short Statement of Editorial Procedures was, instead, provisionally accepted. Our assumption has been that we can achieve enough _accuracy_ without it. 

When Chris pointed out, "if what you prize is the ability to represent textual complexity, TEI is (I would be willing to claim) the best game in town, bar none," it was all to easy for me to respond, 

> I think Claire's suggestion of a Statement of Editorial Procedures (effectively) is the best way to address the problems that arise with selecting the "correct" rendering in terms of typos, versions, provenance, etc. This is because I assume we do not want to be in the business of giving versions: that's for the MVP to take care of. If we are primarily pedagogical, then a short statement of editorial procedures should give enough information to any student or researcher who wishes to do more work in the way of bibliographic, textual, or manuscript studies—for that student or researcher to know where to go looking for the answers/images/versions that we'll not feel obligated to provide.

Nonetheless, it's important to address Chris's underlying concerns by noting that his advocacy has seemed to revolve around questions of editorial fidelity. For example, he argued,

> Consider a situation that we will run into in short order (I think it may already be present in the Pound): a clear and unambiguous typo/error. Do we correct that? If so, our text no longer accurately represents any particular edition. If we don't, we leave an error in a text for a reader. Markdown has no nice answer here, but TEI does. Likewise with the similar issue of standardizing spelling.

This question of representing typos is undeniably important, but we returned to Claire's solution: "to write, in prose, a clear editorial statement." With TEI defeated as our encoding format, Markdown, a simple HTML preprocessor, was proposed as the basis of our textual encoding, though typographically complicated texts (such as manifestoes) will need additional encoding and/or stylesheets to ensure their accuracy. The number of texts that will need this extra level of "care" will, I argue, be limited, though Chris stressed, 

> All texts are odd strange things that thwart our attempts to simplify them. 

My own somewhat unsympathetic reaction to this perhaps undeniable statement may be based partly on my biased impatience with some of the more abstract ramifications of deconstruction, but I also think that a reliance on ad hoc solutions to the questions posed by individual texts will not automatically lead us into an uncontrollably chaotic system. However, I admit this remains to be seen. Furthermore, a later comment from Chris continues to resonate with me, suggesting that we may eventually work with a model that combines Claire's discursive editorial note and a _limited_ number of explanatory notes:

> When Pound throws down Greek, or Woolf mentions Galsworthy, a note would be very helpful. I would keep thinking about how we could shoe horn in editorial and authorial footnotes. We could note in the text of the note itself, like Norton Critical editions, its source, or we could try to devise two different types of notes (endnotes for editorial notes, footnotes for authorial; or use marginal notes, whatever).

Given [Chris's example for his elegant solution](http://harlemshadows.org/home-thoughts.html) for showing notes and variants in _Harlem Shadows_, I can only protest that any solution we come up with should "show up" on the screen the same whether the user is referring to HTML or PDF output.

Chris also brought up the related questions regarding non-ASCII characters and punctuation/special glyphs (i.e., straight or curly quotation marks, Greek characters), which he and Andrew have been finding some good answers to. The result will (eventually!) be the creation of a set of guidelines that contributing editors can consult regarding “house style” of quotations, em-dashes, en-dashes, all that stuff. Various applications ([ligature.js](https://code.google.com/p/ligature-js/), [Smartypants](http://daringfireball.net/projects/smartypants/)) will be used to ensure that these choices are indeed rendered into various outputs.

##Workflow

"When do we need a workflow?" was mightily contested and left somewhat open at the conclusion of our subcommittee deliberations. Basically, will the prototypes follow a standard workflow, or can prototype producers choose his/her own methods? Chris remarked,

> it's something we should decide provisionally, and then try to do, modifying our workflow/procedure based on problems we encounter, and developing "the standard" as we go. That standard will include how to represent the text, but also exactly what metadata we want/need.

I responded that if we allow each prototype producer to use his/her own workflow, then we would ask each producer to supply that prototype and a summary of the methods used. Each prototype would consist of 1) the source image file or information about the source text used; 2) the Markdown file containing the corrected text; 3) the HTML output; and 4) the PDF output. The summary would need to include 1) a _detailed_ step-by-step workflow, 2) a critical description of what worked well, 3) a frank description of what did not work well, and 4) an as-accurate-as-possible estimation of total time spent creating the prototype. Once all of these "reports" are gathered, we can then compare and contrast them to derive a master workflow.

Andrew argued persuasively for using GitHub, even though, as Chris noted, its apparent complexity "will limit the people who are willing to contribute."" Not only does it provide an elegant solution for providing editorial oversight (someone _must_ approve a pull request) and for managing our files in a central location, but also it will give the editors experience using digital tools that they can then use for other projects. Andrew summarized,

> the editorial board can weigh in on the pull request in terms of both scholarly accuracy and technical correctness before any changes are accepted into the master repository for our archive (and by weigh in, I mean leave comments and points for further discussion). If the pull request is accepted, the new stuff is merged in and can be published to the web. If the pull request is rejected, nothing changes for the repo.

Claire, Chris, and I agreed about using GitHub in general, though we did not share all of Andrew's zeal for using Open Modernisms as a training tool for early-career academics and graduate students. Andrew explained his position thus:

> Part of my vision for this project, in thinking about it as a pedagogical project is that it produces documents for use in pedagogy and the production of those documents can be pedagogical. I think learning GitHub is something people interested in DH should do, as I think learning Markdown is something they should do. In my mind, I want people to get involved in this project and emerge with legit DH chops (and I want as many people to have that opportunity as possible).

> Now, that said, I realize my vision is probably hopelessly Utopian, so it's something we should definitely discuss with the board. 

> Another question that maybe this suggests is who's going to be doing the actual document conversion work? I imagine it will primarily be younger assistant professors, adjuncts, and graduate students. For me, not only do I think they'll be the most interested and the most ready to learn, but also the people who will most benefit from having access to and participating in a digital humanities project (I want to get real, serious DH experience on as many CVs as possible).

Chris had noted, before Andrew made this particular version of his argument, that "with projects like this, I am very skeptical that there are too many folks interested in contributing who aren't already interested." Still, it's important to note that this is an animating motive for 1) his participation in Open Modernisms and 2) some of his preferences regarding which programs and tools to use (all generally following the principles of [agile software development](http://en.wikipedia.org/wiki/Agile_software_development)). 

Following agile software development principles, Andrew suggested a basic workflow that moves from images of source texts in PDF to plain text via OCR. Once the OCR has been corrected and edited, a light layer of Markdown will be added. At this point, the activities by individual contributing editors can cease. Our automated system will take over to add a web presentation layer in CSS via Bootstrap. As Andrew explained

> Bootstrap, if you're not familiar, is the software Twitter's web client is made in and it has become an industry standard website-in-a-box templating system for CSS. The reason I chose it is that it also has a standard set of typesetting CSS classes that can be used to format just about anything (with a minimum of end-user hacking). If we use something like Bootstrap, we have a standard but it isn't something we have to invent or even document.

> And that brings me to part of my original interest in this project. We can use Markdown for the documents, Bootstrap for the CSS and layout, GitHub for the collaboration. DH spends so much time fetishizing its tools while most of industry uses off-the-shelf components and a DRY (don't repeat yourself) ethos to rapidly prototype high quality products. For me, that's what is interesting about this project: an agile digital humanities, instead of the lumbering behemoth of NEH funding cycles and data preservation plans (which are fine, too). I think we've been given the opportunity to reinvent some DH wheels by not reinventing some web design ones.

When Claire asked for more clarification about the process of taking Markdown files into our desired outputs (such as HTML and PDF), Andrew responded by suggesting Pandoc---a recommendation that Chris seconded.

### Shawna's workflow draft

1. _Identify texts of interest by consulting the spreadsheet._ (Editorial board will match individual text to individual contributing editor. Spreadsheet is periodically added to according to accepted form responses from the general scholarly public.)

2. _Contributing editor locates or produces a PDF/image of the first edition of the text as the basis of the new version._ (However, one might instead substitute a PDF/image of a non-first edition OR a pre-existing online transcription that you have good reason to trust but someone must also have access to the first edition in some way to verify the base text you are using. Image must be made permanently available to the Board.)

3. _Contributing editor transcribes text into plaintext._ (Keeps track, rigorously, of editorial choices being made: variants, typos, translations, et cetera.)

4. _Contributing editor encodes structural characteristics and typographical details in Markdown, as well as adding YAML metadata in the header._ (YAML: title; author (family and given); work (larger context/book/magazine); publisher; city; year; pages; source (URL); tags; editor)

5. _Individual editor submits .md file via GutHub to someone (editorial board?) for error-checking and quality control check._ (Editorial board/quality control checker will forward approved text to technical team, request further edits from contributing editor, or reject text out of hand.)

6. _Technical team receives checked .md file and produces multiple outputs._ (Technical team responsible for automating process such that new texts are incorporated into the website, via Middleman + Kramdown + templates. Technical team responsible for automating process such that new texts are converted to multiple forms and accessible to Coursepack Maker application, via Pandoc + LaTex + templates.)

## Metadata and documentation

As for metadata, we fell into the "metadata creep" trap and at this point are considering 7 pieces of metadata: author, title, date, publisher, publication context, archive/provenance, person who suggested/coded it.

Claire and Matt brought up the matter of keeping good records. I noted at the time that I was seeing documentation of our decision-making processes, communication exchanges, and workflows as something I’d be willing to take on. Having all that info will lead naturally into writing copy for the “About” section of the website, which I’m interested in taking on. This series of blog posts responds to this particular need.

## UVic interventions

As quickly as we could type, we could not keep up with the enormous energy emanating from the University of Victoria crowd. During these mid-November emails, Stephen Ross and Matt Huculak added materially to these deliberations.

### Stephen & institutional support 

There was quite a bit of discussion among the four of us about money potentially creating a liability in the form of expectations, limitations, etc, though we all agreed that the "rubber stamping" of having institutional affiliations with scholarly organizations would be essential for the success of the project. We also considered that truly harmful interference might only happen if it got to the scope of funding approximate to NEH funding, which is counter to the “essentially fast and cheap” ethos that motivated the project. Where we landed---due to some back-and-forth with our institutional resources guru, Stephen Ross---was being money-positive. He argued, quite simply, "I feel really strongly that we should pay people for their labour."

Stephen pointed out rightly that MSA money could be justly used to recompense people for labor, and that this is a rare opportunity to “do the right thing” by not exploiting our own labor (especially those of vulnerable academic groups, such as tenure-track Assistant Profs and adjuncts). When the four of us debating what that money might be spent on, other than on hosting services, I initially suggested that "any money for labor would be split among the people DOING technical labor that exceeds content development," but Chris rightly diagnosed my weird bias by asking, "Why we would so heavily favor technical rather than content development?" I answered, 

> I guess it was because an English PhD doesn't require the skills that the technical board will be development, so it's perceived as going beyond the normal. Yet if we take digital literary studies seriously, it should be all the same labor. So yeah, consider me caught :) 

It goes to show how internalized our academic hierarchies are!

### Matt and the spreadsheet

Matt has worked with magnificent speed on this [spreadsheet of five dozen or so texts](https://docs.google.com/spreadsheets/d/17VkT5B_GFovHtkvglr6IKYA0emqhnnHKXcFKjeKlviw/edit?usp=sharing) adapted from the original, crowdsourced wish list, and it is an obvious “kernel” to begin with.

## November 14 deliverables

### Andrew's website

By November 14, Andrew had already begun to put together an architecture (basic layers and utility classes) whereby we can use Markdown to translate modernist source texts into online editions quickly, using Middleman (a static site generator) to build the site. The reason to use a static site generator at this point is because we are focused now on getting things _out there_ than building a kind of massive database (which we don't need at this point). Once we get to the stage of coursepacks, we may need a database, but before then, we decided that we can and should do this for free and a lot quicker. If Andrew (and others?) create the necessary templates (in CSS, HAML, Bootstrap)—--the presentation layer—--then they will have freed up "laypersons" to being quickly competent in processing the plain text for us. (Basic users will therefore not have to write XML; getting from Markdown file to a website can be automated.)

Andrew’s sample website can be found here: http://oncomouse.github.io/modsource/

### Chris's and Andrew's prototypes

Andrew quickly created [a small sample of Woolf's "Mr. Bennett and Mrs. Brown"](http://oncomouse.github.io/modsource/documents/woolf-mr._bennett__mrs._brown1924.html) as well as two adaptations [of his already-existing digital edition](http://oncomouse.github.io/modsource/documents/loy-aphorisms_on_futurism.html) of some of [Mina Loy's most important works](http://oncomouse.github.io/modsource/documents/loy-feminist_manifesto1914.html). Furthermore, the way that Andrew and I coded and presented our [Manifesto of Modernist digital Humanities](http://www.shawnaross.com/manifesto/) was also (ta da!) a way for us to work through some of the problems with representing the typographical complexity of Lewis's BLAST manifesto.

Chris created, with truly astonishing speed, an example set of files demonstrating what we would need for a protoype based on Ezra Pound’s “A Retrospect:"

> modsource.css: a few rules to style the HTML output

> modsource.html: HTML output

> modsource.latex: a pandoc template to convert the markdown to PDF

> retrospect.html: Pound's "A Retrospect" in HTML

> retrospect.md: Pound's "A Retrospect" in markdown (with some YAML frontmatter metadata)

> retrospect.pdf: Pound's "A Restrospect" in PDF.

With these files, Chris was able to show us the "atomic" level of this project: the minimum content and code files to move from .pdf to .md to custom .html and custom .pdf. 

### Chris's proof-of-concept

Email and Twitter exchanges between Andrew and Chris began to reveal that Andrew's interests lay more in the website design and Chris's in the creation of the coursepack, a process that was (per Stephen and Matt's suggestions) inspired by and adapted from the [Anarchist Book Builder](http://bookshelf.theanarchistlibrary.org/The%20Book%20Builder). (It should be noted, Andrew stressed, that the Anarchist Book Builder is quite a complicated technology and will still need a lot of work to adapt to our specific needs.)

Chris created a mind-blowing proof-of-concept showing a sample coursepack of four selections (short pieces of criticism from Walter Pater, Joseph Conrad, Ford Madox Ford, and Ezra Pound). This proof-of-concept demonstrates how to work with Pandoc and LaTeX to produce the desired outputs from a .md file. His coursepack used continuous internal pagination and included a table of contents. This was truly a breathtaking moment in our round of email exchanges and should be referred to, over and over again, if we ever feel that our goal is receding.

## Post-November 14 Prototyping

Claire suggested at the MSA meeting that we develop 10 prototype texts as a way to hammer out technical issues and workflow. By the end of our email exchanges, we each signed up for specific prototypes:

1. Chris: Pound, “A Retrospect;” Ford, “On Impressionism”
1. Claire: Woolf, “Modern Fiction” and “Mr. Bennett and Mrs. Brown”
1. Shawna: James, “New York Edition Prefaces” (as many as I can, but at least 1)
1. Andrew: Loy, “Feminist Manifesto,” “Aphorisms on Futurism;” first BLAST manifesto

We suggested that other board members may want to grab

1. Baudelaire, “The Painter of Modern Life”
1. Eliot, “Tradition and the Individual Talent”
1. Eliot, “Ulysses, Order, and Myth”
1. Hulme, “Romanticism and Classicism”

That gives us a dozen prototypes that will let us, as Chris puts it,

> get all those texts in markdown with bibliographic YAML front matter with a goal of producing a mini-version of this project (no web-facing interface yet, but we could mix and match these texts to produce example anthologies from the command line). 

We hoped that prototypes could be turned in during the month of January 2015. The prototype stage can either include the full workflow (see below) or it could simply be that each prototype consists of a Markdown file, the HTML output, and the PDF output. The four of us did not irrevocably decide either way, though we preferred alloweding separate ideating processes to drive individual prototypes.

We would then create an explicit, detailed, documented workflow within a month or two of the prototypes’ original submission. We suggested a goal of **Fall 2015** as the first official roullout of our Open Modernisms anthology, albeit with an understanding that we will not be able to produce _all_ of the texts on the spreadsheet by Fall 2015. After this initial rollout, we bandied about ideas of a) asking for a rollout of, say 5 new texts per month; b) having a quarterly rollout of new texts, e.g., _Open Modernisms Quarterly_; c) having semiannual rollouts that are based on the average times for teachers to be preparing syllabi for upcoming semester (June for fall semesters, November for spring.) I noted that we can always have a set of internal deadlines that are more frequent than the external rollouts.

## Summary & questions given to the board

On November 14, Claire, Chris, Andrew and I decided that our preliminary deliberations had reached their furthest point, and we were now ready to present our findings to the board. This email began with an executive summary and four questions (written by Andrew) preceding a detailed account of the entire four-day exchange (written by me). This summary and these questions drove the initial debates among the board, so it may be useful to reproduce them here.

### Summary given to the board

Open Modernisms will be a collection of roughly essay-length modernist source texts, initially primarily focused on non-fiction and criticism by modernist figures. These documents will be available free-of-charge, in a responsive web format and in PDF, based on Markdown files that have been derived from hand-corrected OCR of PDF images of first edition (or an acceptable equivalent). Additionally, we aim to use Markdown as our document base. Markdown has a wide use in industry and can be converted into HTML of some sophistication using a static-site generator (specifically, we plan to use a program called Middleman for this) as well as print formats such as PDFs using Pandoc. Markdown has the added advantage of being easy to learn for people new to web content. 

To manage both Markdown creation in an open fashion while also allowing editorial control, we propose using GitHub to host documents and coordinate development efforts. GitHub (and the associated program git)  has the advantage of being a widely used tool in the software development industry that allows for asynchronous development and centralized quality control. The major issue (see below) with GitHub is that it does have a bit of a learning curve, but as GitHub is a major part of both the broader open source community and the DH community within academia, learning it will benefit our contributors outside of this project.

At this moment in the project, we are aiming to move from a privately shared PDF or OCR scan of the original source document to a Markdown file that can be compiled into HTML and, if possible, a PDF format (for print-out and use in a classroom setting). Both these source PDFs and the Markdown files would be shared through GitHub for validation and compilation purposes. 

### Questions given to the board

1. GitHub is a powerful process for managing our collaboration and reviewing submissions by our content creators, but it also has a fairly steep learning curve. We are concerned that this learning curve may present a problem (though, we wonder if the learning curve might be situated as a pedagogical opportunity). What do you think?

2. Prototyping: We aim for 10 prototypes (including image/PDF of source file; Markdown file of encoded text with YAML metdata points [see below]; HTML output; PDF output). Each prototype contributor is somewhat free at this stage to determine his/her own workflow and platforms. Andrew, Claire, Chris, and Shawna can produce these together if necessary, but we want to determine with the board if more people on the board should also produce prototypes and/or contribute ideas about how the prototype should be made.

3. Metadata (Long Term): As we devise prototypes, we need to be thinking about metadata standards for our YAML. Chris has been exploring implementations of the CiteProc standard in YAML and we think this is a solid start, but as we implement prototype documents, we need to think about what information we need to store in our metadata.

4. PDF generation is a potentially huge problem. Generating printable, readable PDFs using CSS @print stylesheets is very easy. However, generating PDF files with page numbers is not something that can be done in the browser (currently; there is an experimental CSS feature to do this, but, of course, no browsers implement it as of this moment). To do this, we would have to use a backend system with a batch queuing system that would process Markdown files to PDF as the arrive (this is how the Anarchist Book Builder does it). This overhead is not a deal-breaker, but it increases the complexity of the project simply to get PDFs with page numbers. As an alternative, we have suggested including paragraph numbers in a style similar to Bartleby, but we do want feedback on this. Knowing that page-numbered PDF generation will greatly increase the complexity and hosting cost of this project, how committed are we?

Once the November 14 email was out with these questions, it only took two days for vigorous debate to begin among the followers of MODSOURCE-LIST, the email exchange Andrew and I set up. This debate will be summarized in my next blog posts, Open Modernisms, Parts IV and V.
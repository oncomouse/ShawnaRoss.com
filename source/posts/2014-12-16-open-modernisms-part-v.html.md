---
title: Open Modernisms, Part V
date: 2014-12-16 22:34 UTC
tags:
published: false
---

_In this five-part series of blog posts, I am recounting, by way of documentation, the process by which the modernist community has begun to create a free, digital anthology of modernism. Parts IV and V summarize the MODSOURCE email list in November-December 2014; this installment focuses on the technical details._

## GitHub

He's worried - 
Matt H: I also know many of our members have no idea what github
is. So, if that is the backend, we will want to HIDE it behind a
beautiful, intuitive front end. 

Alex C: I wholeheartedly second the GitHub idea. It’s very easy to design an accessible website frontend with a collaborative GitHub backend for us. In fact, I’ve been working on such a project for the last year and have open source code we can repurpose. 

James G: So, I like the "hidden" GitHub notion.  Those without chops needn't look under the hood.

Along with his defense for using publicly available PDFs, Chris also submitted an amazing proof of concept:
Chris: You can find the markdown in this directory to see what it looks like; I used pandoc, a custom template, a custom pandoc filter, and LaTeX to produce a PDF. It is not perfect; the formatting remains janky (no authors on table of contents; epigraphs are a little dicey). But this workflow lets you produce markdown, combine the resulting markdown in any order (pick and choose as you see fit) and get back a paginated, reasonably good looking (though this we can improve) PDF. There is room here (using pandoc filters) to add different types of annotation, etc etc. What this lacks is an HTML version (though that is easy to produce and Andrew, I trust, could make it look good), and the architecture for produce custom editions (the front end interface and server-side work). I'm happy to elaborate on the details for anyone interested. Consider this a last argument on behalf of an edition based on texts rather than page-images. I understand, as Matt suggests, that this need not be an either/or choice. But projects have inertia, and it is clearly the case that decisions about what we're doing influences how we start (I.e. Use existing scans or scan everything ourselves).

Shawna: Jim Benstead—@ScottishLit, who has been eager to join the listserv and is over at Edinburgh—has generously suggested that he may be willing to put together a tutorial for Git/GitHub tailored to this project.

Matt: I'm all for making our own prototypes. Claire runs a project. I was MJP PM for four years, etc. AND I would also love to have a Github tutorial. Could we set up a Google hangout training course in the near future? 

Stephen: - we should populate a database using the form Andrew has created
- we should populate it with PDFs of essays, articles, poems, plays, novels, whatever we have — more is better to my mind
- we should do OCR on the files and hand correct them — doing that for an essay does not take long at all
- we should immediately adapt the code from the Anarchist book builder to produce a front end that lets users select items from the database to collate into a single PDF for output
- this can be a Christmas present of sorts to the modernists out there, especially those scrambling to do something for the spring term
- the PDFs we use can either be fresh scans or material that is clear of copyright, but for which we have good metadata (i.e., not Gutenberg, but yes to Internet Archive) — if it’s up on IA, then we are fine to post it ourselves, with attribution. The form Andrew has created is essential in this sense, and for other future uses as well. 
- we get the rest of the user community involved in uploading PDFs of materials (can we put these things on hold while we check copyright on them?) and ask that everyone who uses a file re-uploads any corrections they have made (but not editorial apparatus, annotations, or suchlike)

Phase II
- we work on batch converting the PDFs to Markdown so they can be downloaded in a variety of formats. I understand that Jekyll can do this or at least some of it. 
- this lets us begin to do more intensive mark-up of texts as and when we most desire. 

Phase III 
- if we desire, we can begin to advertise these as scholarly or critical editions that have been edited and curated by a team of experts. 

Stephen: With regard to the desire to have a full workflow that moves from scan to OCR, to hand correction, through to TEI or other sorts of mark-up (including RDF and LOD), why reinvent the wheel? modernistcommons.ca has all that functionality and is integrated with the CWRC Writer, Open Canvas, and the Internet Archive already. My personal interest does not run to doing mark-up, but for those of us who do have that interest, it’s a readymade tool for turning PDF into other things, and also for uploading, OCRing, correcting, and getting into marking up. It uses Dublin Core (I think) for its required metadata, and is hosted in Canada, so you can put your stuff there as well if you want to. 

## Documentation

James: I’d like to suggest that we aim to develop a set of learning resources aimed at people from a humanities background and designed to get humanities people up to speed on things like Git, Github and Markdown in a painless and pragmatic way. I’m very keen on the emphasis that the modsource project has placed on maintaining momentum and Getting Stuff Done, so unless anyone has any better idea I’ll get on with simple text-based tutorials for Git and Github.

Shawna: James's idea about a GoogleHangout for a tutorial sounds amazing. We can chat about Markdown and GitHub, get an explanation of this whole Pandoc and LaTeX affair for the Coursepack Maker, an explanation of the CSS/Middleman apparatus for the website. 

I also said to the group that I like the idea of having tutorials specific to our project, as Chris had noted that general tutorials for humanities audiences do exist for GitHub, etc. 

Andrew: Using Markdown, GitHub, & (on the web facing stuff) Bootstrap was partly based on them having extensive documentation, but I think there's real benefit to having documentation for us by us and on our website. I'm thinking this is going to help build community and inclusiveness. We can definitely link out to some things, but probably want some stuff specifically about how we're doing it so that it can be under our banner on the site (when it's live).

Chris: how to encode em dashes; how to encode non-ascii characters, how to encode quotations from poetry, what our YAML metadata fields will be, etc etc. 

## Branding

James: something quite “shiny”, kind of half way between technical documentation and an infographic, and heavily branded. Which, I suppose, raises the question: do we have any branding, or any plan to get some?

Claire: If we want a professional logo and/or brand plan and have a small amount of cash for that purpose, I've hired undergrad students here at Reading from the Typography department for a couple of projects and they have been excellent. The guy who did the MAPP logo would probably be willing and he's awesome. The cost would be relatively small and he works quickly. I suspect we'd want to do this after we had something to actually show, though, yes? 

## Land Grabs & Spreadsheet

Matt continues to work on the spreadsheet: I’ve just updated the colour-scheming on the sheet.

*  If a text is claimed, I’ve marked it “green.” 
*  Let’s use “yellow” to indicate possible conflict/copyright or editorial concerns that need to be investigated further. 
*  Let’s use “red” if there is a copyright or other editorial concern that prevents us from including piece in project. 
*  White means the text is up for grabs and has not been investigated.

## Damn Workflow

Chris: If we're trying to imagine a workflow I imagine it might look something like this:
1. Decide on what texts are in. (The spreadsheet is a start, but it is neither comprehensive, nor feasible [copyright/full works] in its current state). 
2. An individual editor "edits" each text. I take that to mean: finding a text to work from; justifying why that text (as I've suggested before, I think our blanket first appearance answer is a fine rule of thumb, but is precisely the sort of thing that will require revision, I suspect, as we actually trying to do this thing will); finding/creating page images for it, and then, in turn, representing it in the form we need (markdown?). The text's editor then provides something to "us" (who? All of us?) collectively (perhaps through Github); that would include the source images they're working from (or a link thereto so that another "editor" can proofread).
3. A proof-reading by a separate editor checking the text against its source, sensitive to any relevant issues of marking stuff up (should this be a section break?).
4. At this point it's approved and ready to be processed… whatever that means: put in a database to be built into something else from some web app; etc.
5. Ta-Da. A new and valuable resource exists in the world.

Shawna: Here's the thing about the workflow, IMO: we need to get prototypes in from our core group BEFORE we can decide the workflow, particularly regarding bringing outsiders into the fold.

Why? Because we don't have any more details about what's going to work and what won't until we have the prototypes. We won't know until we do it, even though Chris has done a good job of anticipating many of the issues. Chris and Andrew have nearly created prototypes, that's true, but it's also going to take Matt and Claire and me to get our prototypes in to have a truly informed first version of the workflow.

On the "images" issue, I think we landed on not providing images to the public. Images are a part of our internal accuracy checking system and partly as a way to make sure we're OK on copyright, but the two primary public outputs will be HTML and PDF. True? 


## Annotations

Chris advocates for editorial notes; James Gifford seconds the motion, pointing out sagely---regarding provision for annotations---"I don't think it needs to be completed at the first stage, but planning for it would be essential." James and Chris both also agree that variants can be taken care of simply in the kind of discursive editorial "Note" at the beginning of the output files (as Claire Battershill originally suggested.) However, that still leaves errors and explanatory notes.

> the idea that ***we can always add it later*** is, I think, a devilish sort of swan song. If we're putting these texts through the effort to carefully represent them (and then proofread them), then now is the best time to do this, when we're already, of necessity, waist-deep in the particularities of a text we're working on. We can be modest in our annotations. The real question, I think, from the technical side of things, is how to distinguish between authorial and editorial footnotes? And there I think the question is do we distinguish the notes at the level of their encoding or just within the node. In the former case, as Norton anthologies/critical editions do, we simply mark, within the note, its source. "Blah blah blah.--Ed." We could then use existing pandoc markdown (^[]) and be done. We could also, however, invent our own markup for editorial notes (say ^![] or, to make it easy to process, ^[ !! NOTE TEXT. ]) and then write a filter that would specially handle that material when we're processing from markdown to PDF/HTML/whatever. This would allow us to, for instance, just drop the notes entirely if folks don't want 'em; or format them differently in our output formats: e.g. Use footnotes for authorial notes and endnotes for editorial notes in PDF; use endnotes for authorial notes and marginal notes for editorial notes in HTML.

Andrew: The idea you suggested, Chris, of moving the metadata issue off this thread is probably for the best. I am also interested in hashing this out and figuring out to implement it in YAML (as well as Ruby parsers for both website and possible PDF implementation, which, ugh, but that's what one has to do).

Andrew: In CSS and HTML, indicating differing footnotes is almost trivial (you can set a numbered list to use A-Z or Roman with one line of CSS), so if we build some kind of annotation system into the Markdown it's not hard to parse them into HTML. For PDFs w/ Pandoc, it may be harder.

Also, Markdown (& I think Pandoc) has two styles for footnotes (inline (^[footnote text]) and name-referenced ([^footnote-name] ... [^footnote-name]: footnote text), so that might be possible to parse those separately. We could also think about using the <del> tag in HTML to indicate editorial notes or some other tag such as that.

That said, thinking about writing Markdown & Pandoc plugins is giving me hives. I do worry this is over-complicating the task we're attempting to set out to do. In which case, do we need this facility out of the box? Especially if it blocks our ability to get texts up and online?

Shawna: It looks like we're agreed on some kind of provision for recording editorial notes. Chris has a great starting strategy, and we could add our SMALL (small, Stephen, and we'll document them clearly!) set of custom tags for marking a "modest" (as Chris puts it) selection of variants/errors. Earlier, we had discussed having a header that discursively summarized the editorial decisions (in paragraph/sentence form), but Chris has put a lot of work into it and is getting at some very workable inline solutions. I agree with Andrew and Chris about working these metadata/annotation issues in a smaller group because hard to know if other people (beyond James, Claire, Chris) are indicating by their silence either agreement or complete disagreement/disaffection or just that they're too busy at the moment (which I totally understand). And we can see from experience that when Chris and Andrew start exchanging things, they get results fast. But anyone who can add to this conversation should get into it.

Brings us to asking, as Chris said, _which_ Markdown? Andrew and I suggested Pandoc's Markdown, which will ensure that we get smoothly from .md to Pandoc to produce our output formats.

Chris: I just wrote a markdown test file using both types of note and outputted it into default PDF and HTML; that mixed encoding disappears in the output, and what emerges as a single set of numbered notes. In fact, they're identical in how  pandoc's "AST"  (abstract syntax tree), meaning there is no easy way to make that distinction in source syntax reappear out the other side of the transformation.

Chris remarked taht we can solve problem with a filter that will take those tags and preserve their differences, a "hive-inducing" but "simple" modification of Markdown:

> It can be as simple as using ^[note text] for authorial notes and  ^[ED: note text] for editorial. We just need to all be utterly faithful in using exactly that format so that it is easily captured by a filter

> The trick becomes how we output that information we capture in the filter; as Andrew says, it should be pretty easy in HTML. (Put 'em in a span or a div on 'em with class authorial-note or editorial-note and then style as necessary). PDF via LaTeX may be a little less pleasant, but I am confident I can add something to pandoc's default template (that we're already going to need to customize) to make this distinction work (footnotes for author's, endnotes for editors, perhaps?).

For me, if Jim Benstead's tutorials are clear enough, there's no problem with that. 

James Gifford noted, "one of my hobby horses is ePub, in which IPDF affords more options for annotations than typical ereaders permit for display". (Stephen doesn't really want to prioritize ePub, nor does Chris, and wish to leave responsibility on James for working that out, but Claire pointed out that their standards are easily available and free to peruse.) James also said to do the Markdown footnotes, he says "(div with class may be easiest)" and "I'd rather class controlled by CSS in that context, but I don't know what's easiest with LaTeX." and "To be candid, I've not looked closely at Pandoc -- is it better for us to think of this with CSS and class tags for output, or is that not really how it works? I'm thinking of Chris' comment on indentation as well as inline vs. name-referenced notes.  Those strike me as formatting not classification, and if the point of markdown is to keep it all as human readable as possible with longevity, we might want to tread carefully. Class has the benefit of being self-descriptive if we wish."

Chris: "So, I've been playing a bit with pandoc filters to take a crack at implanting a note structure. I think using markdown (or, rather, pandoc's markdown) built-in notes for authorial notes and just preface editorial notes with ED: works fine and remains (pretty?) legible. I wanted something like a proof of concept. You can see it at http://cforster.com/share/modsource/. I generated HTML and PDF output; PDF uses footnotes and endnotes; HTML uses CSS-margin notes and pandoc's automated "footnotes." (I considered trying to use Andrew's nice jQuery  plugin… but I was trying to keep this rock-stupid simple, so no javascript). As I'll note below, this way of doing it doesn't really work. But my chief intention was to show that we can add our own conventions to markdown and then write use something (in this case pandoc filters, though one could imagine other types of processing)

To generate those two files, all you need is pandoc and the files in that directory (and, for PDF generation, xelatex). The magical incantations are:

pandoc -o test.pdf --template=./standalone.latex --filter=./note-filter.py --filter=./poetry-filter.py --latex-engine=xelatex test.md

pandoc -S -s -o test.html --template=.standalone.html --filter=./note-filter.py --filter=./poetry-filter.py --latex-engine=xelatex test.md

So, a proposal: we include short editorial notes, as markdown notes which begin ED:.

Votes, anyone?

A Quandry: If you look at either the PDF or HTML output, you'll see that in the quoted bit of verse there is a problem; there should be italics, but the markdown italic formatting (*) has fallen through the filter. That's b/c of how this particular filter works… Writing pandoc filters, from my brief experience, is not super fun—largely b/c I'm writing 'em in Python, and pandoc is haskell, so the documentation for the underlying structures tends to be haskell-centric. I'm going to keep plugging away. If anyone wants to plug away with me, I'd be happy for the help. We could set up a time in an IRC room (old school!) or Google hangout or just plain email. I find these sorts of problems fascinating and worthy of effort, even if somewhat vexing.

 think ePub should remain, if not an absolute priority, sufficiently on our radar that we don't do anything that'll make ePub more unpleasant (than necessary). Could you elaborate a little more James about what you mean here: what's IPDF and what precisely do you mean/imagine by "class controlled by CSS"?  I've looked at ePub in the most cursory way and as I recall, to summarize: it's a big complicated multi-file format (an .epub is a zip files with a a conventionalized set of directories and files), with css and HTML being the heart of that matter; is that basically right? In which case, we should think how best to generate the ePub---for instance, via middleman or via pandoc. (Pandoc can output to epub; but people have used middleman to generate the HTML and then gone from there too, as we might consider doing, especially if middleman is our royal road to HTML already.)"
 
 But Stephen is against it to a degree: "Speaking for myself only, I did not envision this as an editorial project, but more of a curatorial one: that is, no editorial apparatus was figured into what I initially thought we should do, though of course some amount of providing metadata, and being responsible about choice of edition, etc is implicit. I won’t be wanting to add notes to things myself, and imagine users who want to be able to give their students the primary (or primary-secondary) texts, and then to nuance, introduce, and otherwise fill in gaps through other means (lectures, exercises, and so forth). I hope that any annotation we do will be optional for others to download and use, giving them the chance also to download without annotations if they wish."

## Metadata 

Me: title; author name (family and given); work (original publication context, e.g., name of little magazine); publisher; city; year; pages (within original context); name of scanner/uploader; source (where you found the OCR or the online PDF, could be your library.)

Chris: YAML CiteProc

Chris: we need to be clear what sort of fields are legal for that YAML front-matter.

## Groups again?

Silence on the listserv otherwise caused us to consider restricting certain tasks to a smaller group. The capaciousness of the auditorium, as it were, makes it feel _more_ like a dictatorship than knowing that, within a more restricted group, everyone is participating actively _roughly simultaneously_. Chris wanted a smaller group for writing about practical concerns of actually creating prototypes: metadata scope, document structure, editorial annotations.

## Server

Get Andrew's and Chris's stuff on this.

## Rails

Sumatra is easier, but the mundane (user management, account creation) stuff is done better by Rails. What we need is really simple, but it is very specific. We want to create a custom solution---not relying on other people's solutions. 

## Load problem

1,000 users at a time. If we weren't worried about overloading the server, it would be easier.

## What's going on

I summarized, 

> For me, I'm for internally permanently available images (along with any links to additional sources, such as a link to previously OCR'd version already online) that each contributing editor uses to make & check a plaintext Markdown file that we will use to spit out both HTML and PDF versions, with both HTML and PDF open publicly to users. Links to source texts (whether that's an image or text) will be given to users. 

Andrew: the first step is a repository; the second is a meta-anthology.


Prototypes, partial rollout of Fall 2015

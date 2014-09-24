---
title: Digital Editions
progress_bar: true
twitter: true
---

class: middle, center, big

.title-block[
# Digital Editions as Aesthetic Scholarly Arguments
]
## Shawna Ross | ASU Poly
_for_ 
## DHUM 350 | UVic

### _Press right arrow button on your keyboard to navigate to the next slide._

---

# Who I Am | Why I Care

## University of Tennessee

* Educational preparation level
* Affordability of texts
  
## Pennsylvania State University

* Significance of textual editing
* No specific computer science training
  
## Arizona State University

* Distance/periphery
* Public mission

---

# Mina Loy Disaster

### (Imagine this crowded by navigational menus & advertisements!)

![image of horrible online edition](/images/slides/bad_feminist_manifesto.png)

---

# Mina Loy Solution

### http://oncomouse.github.io/loy/

![image from github site](/images/slides/markdown_feminist_manifesto.png)

---

# Mina Loy, "Parturition"

### Who will have the patience & drive to preserve typography?

![image from parturition](/images/slides/patient_encoding.png)

---

class: big

# Henry James Online Now

* Inconsistent
* Inaccurate
* Incomplete
* Ugly
  * We're talking the 1990s suing us for copyright violations.

---

# Encoding = Affordances

### http://victorian.lang.nagoya-u.ac.jp/concordance/

![image from Nagoya U Concordance](/images/slides/ambassadors_concordance_result.png)

---

# Literary Data = New Data

![my graph for _Henry James Today_ collection](/images/slides/smallish_ambassadors_graph.png)

---

class: big

# New Digital Henry James

* Standardized
* Corrected
* Open
* Dynamic
* Attractive

---

class: big

# Project Requirements

1. Chunk it
2. Prototype it ("Guest's Confession" & _The Ambassadors_)
3. Collaborate & fund
4. Plan for the future

---

class: big

# Design Concerns

1. Mitigate perceived difficulty
2. Streamline reading experience
3. Balance authenticity with contemporaneity
4. Plan for diverse audience

---
class: middle, center, big

.title-block[
# Let's Talk Preliminary Statistics
]

---

## Sample Complexity Levels, _The Ambassadors_

|Chapter     | Lexical Density      | Readability     |
|:------------|:--------------------:|----------------:|
| Preface | 49.4% | 14.1 |
| Bk 1, Ch 2 | 55.1% | 8.2 |
| Bk 1, Ch 3 | 58.2% | 7.2 |
| Bk 2, Ch 1 | 38.5% | 5.5 |
| Bk 2, Ch 2 | 48.2% | 11.3 |

|Type | Lexical Density | Readability |
|:------|:------:|------:|
| Dialogue | 57.9% | 4.1 |
| Narration | 66.0% | 11.4 |

---

## Line Lengths

### Tiny portion of _The Ambassadors_

![selection of line lengths](/images/slides/character_length.png)

### Norms for online writing

Conventional recommendations: 45-100 characters; average: 70 characters. As [Rutter's digital adaptation](http://webtypography.net/) of Bringhurst [advises](http://webtypography.net/2.1.2), 

> _Anything from 45 to 75 characters is widely regarded as a satisfactory length of line for a single-column page set in a serifed text face in a text size. The 66-character line (counting both letters and spaces) is widely regarded as ideal._

---

## Line Length

### Examining the first line of _The Golden Bowl_ (text of 1909 ed.)

* The New York Edition (first line, 47; average, 51.2)

![NYE Line](/images/blog/NYE_first_wings_of_the_dove_line.jpg)

* .Epub Ebook (first line, 47; average, 47.2)

![epub line](/images/blog/epub_first_line_of_wings_of_the_dove.jpg)

* Gutenberg .html file (first line, 138 characters)

![Gutenberg line](/images/blog/gutenberg_first_line_of_wings_of_the_dove.jpg)

---

class: big

### For the record, that's

> _The Prince had always liked his London, when it had come to him; he was one of the modern Romans who find by the Thames a more convincing_

### just to earn your first line break.

---

class: middle, center, big

.title-block[
# Difficulty:

# James's fault? 

# or the typography?
]

---

class: big

# The New York Edition

1. James was so happy with it!
1. Centuries of practical printers' knowledge
1. Signifies "datedness" that is aesthetically appropriate

---

# The NYE Typeface  (from my dozen or so samples):


![Princess Casamassima title page](/images/blog/princess_casamassima_font_sample.png)

---

## Locating Typeface: Collect Your Data

* Capital A: concave stroke at the top
* Italic Capital E: viciously extreme serifs
* Italic Lowercase F: slim and spare, no curl to it
* Italic Lowercase H: stem is straight; looks like a _"b"_
* Italic Capital J: has bar bisecting downstroke
* Swashes used for capital T, lowercase w, capital Y
* Which ligatures are connected?
  * “oe” is indeed connected
  * “fl” is indeed connected
  * “fi” is indeed connected
  * “ff” is indeed connected
  * “ffi” is indeed connected
  * “ft” is NOT connected
  * “Th”/"th" is NOT connected
  
### Do you know how long it takes to find a capital Q?!

---

## Locating Typeface: Free Online Tools

* [What the Font](http://www.myfonts.com/WhatTheFont/)
  * Upload a sample
* [IdentiFont](http://www.identifont.com/)
  * Like those "tree key" questionnaires
* [What Font Is](http://www.whatfontis.com/)
  * Painstaking but reliable process
* [Serif Font Identification Guide](http://www.bowfinprintworks.com/SerifGuide/serifsearch.php)
  * My favorite!
  * Identifying quibbling serif characteristics, angles, tail lengths, bowl shapes

---

# Rock the Caslon

![Three Caslons of Henry James](/images/blog/screenshot.png)

---

# The Typeface

## Required Glyphs

* True italics and true bold fonts
* Small caps
* Case-sensitive forms 
* Lower-case and upper-case numerals
* Ligatures
* Fractions, superiors, inferiors
* Swashes
* Alternate long Q, 0, 1
* Multiple en- and em-dash lengths
* Floating accents

### Winner: [Williams Caslon at the Font Bureau](http://www.fontbureau.com/fonts/williamscaslontext/)

---

# The Typeface

## Technical Specifications

* Uncompressed
  * Unfuzzy (no GoogleFonts)
* Web-ready
  * Designed to look good on screens
* Self-hosting option
  * Ensures consistency across browsers
* Language support beyond Western Europe
  * Be globally aware!
* Safe across platforms 
  * Mac or Windows OS
* Adobe compatibility
  * Simplifies branding
  
### Winner: [OpenType](http://www.typography.com/techniques/opentype/) 

---

# My Design Influences

## Johanna Drucker

> _Understanding the way the basic spatio-temporal structure of the codex undergirds the conceptual organization of reading spaces is still important as we move forward with designing new environments for publication._

> _This would be an understanding based less on a formal grasp of layout, graphic, and physical features and more on an analysis of how those format features effect the functional operation and activity of the work done by a traditional book. Or, to put it more simply, rather than think about simulating the way a book looks, we might consider extending the ways a book works as we shift into digital instruments._

### ["The Virtual Codex from Page Space to E-space."](http://www.digitalhumanities.org/companion/view?docId=blackwell/9781405148641/9781405148641.xml&chunk.id=ss1-5-5&toc.depth=1&toc.id=ss1-5-5&brand=9781405148641_brand)

---

# My Design Influences

## Richard Rutter & Robert Bringhurst

> _For too long typographic style and its accompanying attention to detail have been overlooked by website designers, particularly in body copy. In years gone by this could have been put down to the technology, but now the web has caught up. The advent of much improved browsers, text rendering and high resolution screens, combine to negate technology as an excuse._

### [The Elements of Typographic Style Applied to the Web](http://webtypography.net/toc/)

---

# My Design Influences

## Smashing Magazine

> _While we cannot change which browser and OS our website visitors use, understanding why fonts look the way they do helps us make websites that are successful and comfortable to read in every scenario. Until recently, there were only a small handful of “Web safe” fonts we could use. While offering little variety (or means of expression), these fonts were very well-crafted and specifically adjusted—or even developed—for the screen, so there was little to worry about in terms of display quality.... Now that we have a great choice of fonts that can be used on websites, it becomes clear that the translation of a design into pixels is not something that happens naturally or consistently._ 
(Tim Ahrens, "A Closer Look at Font Rendering")

### http://www.smashingmagazine.com/


---

class: middle, center, big


But before you can really indulge in these typographic subtleties, you should have something to _work on_, right? That's where _rapid prototyping_ comes in.


---

class: medium

_Rapid prototyping_ is a strategy whereby you swiftly erect a relatively stable interface to manufacture temporary mock-ups modeling proposed functionalities _in a semi-usable form_ so you do not waste time building something that is wrong.

---

# Rapid Prototyping

## Advantages

1. Minimizes initial investment (time and money)
1. Leverages enthusiasms as they occur
1. Enables user reviews/responses at early stage
1. Clarifies ideals and scope of project
1. Produces deliverable to legitimize funding requests/applications

## Disadvantages

1. Could "waste" time on temporary/abandoned forms
1. Could enable habits or workflows that must be unlearned
1. Could disincentivize move to the second, permanent stage
---

# Rapid Prototyping

### _Methods should emphasize the free, the ubiquitous, the easy to use and disseminate_

* Collaborative editing tools
  * Google Drive
  * GitHub
  * Dropbox
* CMS
  * Omeka
  * Drupal
  * Heck, even Wordpress
* Library resources 
  * Librarians!
  * Bibliographical tools (Zotero)
  
### _Get the job done, and learn as you go._

---

class: medium

# Consistent Metadata and Documented Workflows

1. _Standardize_ objects in your archive
1. Enable _unforeseen_ operations and functionalities
1. Train future _collaborators_
1. Crystallize general tips and _strategies_ for other projects

---

class: medium

# Metadata

## _Data about Data_

1. Think about bibliographies
1. Where did your object come from?
1. What are its structural characteristics?
1. Tailored to purpose/object

---

# Metadata = Power

### Adaptable
  * It should respond to the varying needs of each particular text
  * Slightly different information for different genres (poem, manifesto, short story, novel, letter)
  
### Linked
  * Eventually could be tied semantically to style/presentation information at front end (CSS)
  * Files will be simpler, documentation more efficient
  
### Granular
  * Submitted to more kinds of transformations (more tools!)
  * Can generate individualized libraries

---

# Metadata Advice

### Document metadata no matter what file format
* Markdown: Beginning of your .md file
* TEI: In the TEI header 

### Divide into required and optional
* Required Metadata: Document will implode without it
* Optional Metadata: Features that may not be relevant for all of your objects

### Orthodoxy OK!
  * Consider the [Dublin Core Schema](http://dublincore.org/)
  * Practical to select an existing schema to customize
  * Probably no need to reinvent the wheel here

---

class: medium

A _workflow_ is an explicit, complete declaration of an ordered series of actions within a complete cycle of object acquisition. It may document program choices, data input, the paths of files moving among programs and users, error checking, and data preservation strategies.

---

# Documenting Workflows

### Begin now! 
Even before you think you need to
### Simplify
Try to use same file format (e.g., .md) or program (e.g., TextMate) as other objects. Do it _all_ digitally.
### Update consistently
You will have to accommodate apparently endless changes, especially at beginning.
### Be OK with annoyance
Redoing documentation, whether metadata or workflows, will help you constantly refine your mental model of the project and check for errors.

---

# Workflow Advice

### Write for strangers
Even if only you will see it, you may forget what you meant months from now!
### Start small
Establish good habits before you scale out your workflow.
### Should be a microcosm
Even if implicitly, your workflow should mirror your goals and priorities.
### Push it out!
Always include provision for keeping data somewhere else than your own hard drive!

---

# Samples and Examples

## The best explanation is an example!

1. ProfHacker's [workflow example](http://chronicle.com/blogs/profhacker/digital-workflows-for-the-archives/53505)
2. William J. Turkel's [tips and tricks for workflows](http://williamjturkel.net/how-to/)
3. Chad Black's [tool list](https://parezcoydigo.wordpress.com/2011/03/14/update-on-the-ever-changing-workflow/)
4. Mark Twain Project Online's [entire "About" section is amazing](http://www.marktwainproject.org/about_mtpo.shtml)
### _And pay especial attention to MTPO's [technical summary](http://www.marktwainproject.org/about_technicalsummary.shtml) for great workflow_

---

# Political Issues

## Turf Wars

### Stay polite. 
* When _necessary_ for copyright or goodwill, seek out "stakeholders."
* Copyright: family members/trusts, editors/scholars
* Departments, centers, scholarly organizations

### Don't be railroaded. Don't give up!
* It may just take time or due acknowledgment of prior scholarship.
* Emphasize communal responsibility & effort, not individual efforts
  
---
  
# Political Issues 

## Turf War Strategies

### Use "stakeholders" to solve problems for you
* They work, too, and have contacts.
* They can help you avoid feature creep (by delegation).

### Keep focus on what you actually want to achieve
* May have to sacrifice total vision to reach most important goal
* Adjust scope of content to remain firm about digital outcomes and structures
* Stay patient! 

---

class: medium

# Political Issues: Respect

* Textual editing historically not the most glamorous task
* Some may doubt if encoding is "actually" scholarship
* You may be regarded as doing service rather than research

---

# Political Issues: Respect

### Repeat after Me:

### Digital Editions _Are_ Scholarship.

1. They interpret and analyze a text
1. They update texts for the next generation
  * Your choices have inherent political and social effects
1. They ensure the continued presence of literature on the web
1. They provide a beginning for further new scholarship
  * Enable new uses for texts: visualizations, calculations, concordances, maps
   
---

# Political Issues: Respect

### Talking Points for Haters

### The Public!
* Public outreach
  * Open-access text creation
* Community service
  * Appeal to regional interests or needs
* Crowdsourcing 
  * Bring the public into the academic sphere
  
### Value!
* Grant funding
* Institutional prestige
* "Let us take care of the administrators."

---

class: middle, center, big

.title-block[
# Here's Where You All Come In
]

---

# ModSource: Beginning

## Totally Innocent Query

### Jonathan Morse asks the Modernist Studies Association group for

> _an anthology of primary sources (not just backgrounds or criticism) for a senior-level introduction to modernist literature, primarily in English...[because existing anthologies have] eccentric selections, unfocused intorductions, fine print, no pictures, and typos and editorial errors on almost every page._

---

# ModSource: Problem

### Jane Garrity chimes in, noting that she and her collaborators for a transnational women's anthology

> _have encountered some resistance from publishers who...cannot make the finances work. Many of the primary sources that we are interested in bringing back into print are not readily available._

> _We have also been told that scholarly editions that bring individual writers further up the research ladder are more likely to be published than...'forgotten' and 'noncanonical' figures. In short, I think that publishers' commissioning priorities will need to change if everyone's anthology desires are to be met._ 

---

class: middle, center, big

.title-block[

### Then James Gifford and UVic's own Stephen Ross suggest 

> _a creative-commons site where you can essentially build-a-book from an existing library of materials in the public domain._

### Email list promptly blows up. Conversation extends to Twitter.
]

---

class: big
# ModSource: Need

## _An anthology that is_

* Open & Free
* Fast & Light
* Eclectic & Inclusive

## _Bypass publishers, who might kill innovation at every step_

---

# ModSource: Concept

### Open up the Anthology

* As quick and dirty as is consistent with quality
* Keep enthusiasm going
* Remember: _rapid prototyping_

### _Mostly_ remote collaboration (MSA & Twitter)
* Leverage existing networks to create new one
* Some contribute files, others code: meet people where they are!

### Must avoid or defer feature-creep
* Return to core values!
* New functionalities can be added later.

---

# ModSource: Workflow

### Props to your prof's tiered solution

1. Solicit and receive PDF files from MSA members
  * Method depends on tech-savviness of provider: meet people where they are
1. Gather files on GitHub for Groups page
1. Convert PDFs to plain text
  * May use OCR/conversion program for bulk transformation of PDF into plain text
1. Convert plain text files to Markdown files and commit to GitHub
  * Some hand-encoding necessary
1. Slap up prototype website via Jekyll
  * Will be able to solicit user reviews
1. Develop modernistsourcebook.org or the like
  1. Database-driven application using specific style sheets depending on genre
  1. Develop on Ember, Backbone, etc, any app that runs Ruby on Rails in browser
  1. Keep GitHub (may not need complicated server system)

---

# ModSource: Futures

## Create Individualized Coursepacks
* Track texts + Track users = Track coursepacks
  
## Enrich the texts

* Variants
* Student editions
* Critical apparatuses
* Multiple output formats
* Author-specific stylesheets

---

class: middle, center, big

.title-block[
# Digital Editions are Textual and Aesthetic Activism
]

---

class: middle, center, big

.title-block[
# Conclusions
]
## Your class is fundamental for this project.
## Questions?
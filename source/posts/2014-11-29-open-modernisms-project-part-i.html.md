---
title: Open Modernisms Project, Part I
date: 2014-11-29 16:55 UTC
tags: Open Modernisms, Matt Huculak, Stephen Ross, James Gifford, Andrew Pilsch, Chris Forster, MSA, pedagogy
---

_In this five-part series of blog posts, I am recounting, by way of documentation, the process by which the modernist community has begun to create a free, digital anthology of modernism. This installment summarizes the email exchange that prompted the project._

On September 4, Jonathan Morse caused a stir on the Modernist Studies Association mailing list with the following query:

> Can anyone recommend an anthology of primary sources (not just backgrounds or criticism) for a senior-level introduction to modernist literature, primarily in English? The last time I taught this course I used Lawrence Rainey's Modernism, but for the well known reasons (eccentric selections, unfocused introductions, fine print, no pictures, and typos and editorial errors on almost every page) I'd rather not live through that experience again.

Angeliki Spiropoulou promptly suggested another classic, Kolocotroni, Goldman, and Taxidou's _Modernism: An Anthology of Sources and Documents_, while Gregory Castle added Ellman and Feidelson's _The Modern Tradition_, Jonathan Greenberg put in a vote for Carter and Friedman's _Modernism and Literature: An Introduction and Reader_, and Georgia Johnston for Bonnie Kime Scott's _Gender in Modernism_ and _Gender of Modernism_. But this collection of collections changed gear when James Gifford wrote,

> My modernism course this past summer was fully online and used entirely electronic texts -- I've been surprised by the improvements in access through different databases over the past two years.  Rainey's edition of /The Waste Land/ is in ebrary for most subscribers, as are several of the OUP World Classics editions.  My own student manual was already in ePub, conveniently, but the e-copies of the primary texts surprised me by interfacing well with my Sony ereader and iPad -- it was productive in that context to know students all had the same editions, and also helpful to be able to check if they'd downloaded them. [...]

> With so much now out of copyright, when will the MSA start a creative commons critical collection?  Crowd sourced?

James highlights here that a free, open, digital anthology is not only possible (due to our mostly favorable position in history) but also appropriate for an era in which most of our students access their texts in a number of print- and non-print ways. Responses from Gary Stonum and Jane Garrity emphasized the outdatedness of the _selections_ in existing anthologies. In particular, Jane Garrity's struggles with creating an anthology that responds to New Modernist Studies, that includes non-white, non-male, non-straight, non-metropole, non-Western authors, stood out:

> As a footnote to Georgia's message I wanted to say that Anne Fernald, Anna Snaith and I are working on an anthology on Transnational Women Modernists but have encountered some resistance from publishers who have told us that they are cautious about taking on teaching anthologies because they cannot make the finances work. Many of the primary sources that we are interested in bringing back into print are not readily available online or in second-hand collections. We have also been told that scholarly editions that bring individual writers further up the research ladder are more likely to be published than anthologies that gather writings from 'forgotten' and 'noncanonical' figures. In short, I think that publishers' commissioning priorities will need to change if everyone's anthology desires are to be met. 

Various respondents used Jane's anecdote to support James's suggestion for an open-access anthology. Stephen Ross chimed in succinctly,

> I love the idea of a creative commons site where you can essentially build-a-book from an existing library of materials in the public domain. Surely much of the material is now out of copyright, making such an endeavour relatively easy. 

With my love of Markdown, I chimed in,

> After figuring out what kinds of texts we'd like to see open-access, proofread, etc, online, we could start a collaborative editing platform through GitHub. I'd be interested in using GitHub as a quasi-CMS that could automatically convert documents to a very slim, small, mobile Markdown file that you could then access in .epub, .txt., or .pdf form. 

> It would take individual interventions to find a source for each file, and we would want people to volunteer to do proof-reading, but if it's a community effort, no one person would have to take on a major project.

> Look how beautiful and simple a Markdown file can be in Github in this Mina Loy repository: http://oncomouse.github.io/loy/

I then started a [GoogleDoc "wish list"](https://docs.google.com/document/d/1-Wibh_vEheI2A8LtpF22-qCrfjuDPWj_jvebPQ7eJOY/edit?usp=sharing) for the MSA community to add their desired entries in this new collection. (This wish list is no longer in use and has been superseded [by Matt Huculak's spreadsheet](https://docs.google.com/spreadsheets/d/17VkT5B_GFovHtkvglr6IKYA0emqhnnHKXcFKjeKlviw/edit?usp=sharing), on which more in Part IV.) Once a few days had passed, the MSA mailing list was still alight with people communicating interest and sharing support (e.g., Laura Doyle's offer of providing files of manifestoes and Cathryn Setz's offer of the run of _representations_, as well as Cathryn's offer to liaise with BAMS and Lorraine Sim's offer to liaise with AMSN, Ryan Weberling's discussion of potentially working with texts on the [MJP](http://modjourn.org/) and the [Internet Archive](https://archive.org/), and James Benstead's suggestion of Drupal as a CMS).

The conversation continued on Twitter, where it brought in some players not active on the MSA mailing list, including Alex Christie, Cliff Wulfman, Erin Templeton, Jeff Drouin, Alex Gil, Sean Latham, James O'Sullivan, Jonathan Goodwin, Andrew Pilsch (who along with Alex Christie suggested Pandoc as a good tool for us), and Chris Forster (whose suggestion of using Jekyll, a static-site generator hooked into GitHub, was an early indication of his technical problem-solving skills). This conversation emphasized collaborations with the [Modernist Journals Project](http://modjourn.org/), the [Modernist Versions Project](http://web.uvic.ca/~mvp1922/), MSA, and especially the upcoming [ModNets](http://www.modnets.org/) from Pamela Caughie and David Chinitz (as a NINES-like "federation" of digital projects that would ensure quality). Matt suggested a tiered system that includes a faster set of texts ("raw") followed by a more closely edited set. I continued to emphasize using Markdown for a simple way to process raw OCR or plaintext into machine-readable form. 

With dueling conversations on the MSA mailing list and Twitter, I suggested to table the major decision-making process until many of us could meet in person at the MSA conference in Pittsburgh on November 6-9. I will start the next blog post with a summary of the proceedings of that first meeting, but for now, I will leave us with quoting from the original GoogleDoc with its summary of the aims and methods of the project:

> Tell us what you would like to see included in an open-access sourcebook for teaching modernism, perhaps linked with the MJP, MVP, and ModNets communities and/or using the Modernist Commons environment. (We could leverage the MVP community to create a NINES like environment that would validate already-existing editions in addition to hosting tailor-made texts.) Other suggestions include GitHub community archive repository using Jekyll (static site generator in Ruby that runs natively in GitHub Pages) for front-end/UI (although in the long run, it may be restrictive, so consider something like Middleman), Pandoc for batch conversion (based on .md). Process may use tiered system for “raw” converted documents from Pandoc to give instant access, followed by hand-checked/encoded texts whenever possible.

> **Upshot: a free, online, proofread, consistent, and canonical and extra-canonical coursepack for your classes that students can download in the format most convenient for them.**

> We may add a form component and/or a voting component to prioritize documents of immediate interest to the community. This list is intended primarily for primary source texts and is intended to 1) streamline your access, and 2) expand it to “noncanonical” materials (women, writers of color, etc). Secondary sources and poetry/fiction can be added at the end of this document. (Please focus on rare poetry/fiction.)

Ultimately, I think what we can take from this early stage is the basic mission: to create an open-access, digital anthology for teaching modernism that responds to the enhanced sense of the canon that we have with New Modernist Studies.
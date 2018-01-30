---
title: Style guide for templates
author: Will Denny <will@wjdenny.com>
cover: placeholder-cover.jpg
---

# Style guide for templates

This guide shows you how to use pandoc Markdown to create different
components in your documents, and what they look like. It's also useful
for testing the CSS styles!

It is organized by components in a rendered document. Each
component has its own section, where I give an example of
the Markdown used to generate it and its rendering.

Most styles in these templates simply put a polish on the
Markdown that Pandoc supports. You can read more about that
[here](https://pandoc.org/MANUAL.html#pandocs-markdown).

## Cover images
Cover images for a document can be specified by the `cover` variable in the
YAML metadata block, or supplied by the command line as an arugment to pandoc. 

```
---
title: A new document
author: You
date: 2018
cover: cover.jpg
---
```

This will automatically generate a page with the title,
author, date, and cover image. Alternatively, you can use
the command line pandoc flag `-V cover:cover.jpg`, where
`cover.jpg` is the name of the cover image you want to use.

## Inline formatting
You can use `*` or `_` to surround text you want to make
italics. Use two of them to make it bold.

```
Purto *ullum* definiebas __no his__. 
```

Purto *ullum* definiebas __no his__. 

You can also use `~~` to strike through text.
```
His eu autem interpretaris, pri sale ~~dolorum~~ cu. 
```

His eu autem interpretaris, pri sale ~~dolorum~~ cu. 

## Cloze gaps
I often want to include a space for students to write their
own answers. Cloze gaps are useful for this, and can be done
a couple of ways.

The `cloze` class will keep the width relative to the
original text. This is fine for some cases, but sometimes it
might give too much information about what the answer is.
For these situations, you can use `.cloze-sm`, `.cloze-md`,
`cloze-lg`, or `cloze-block` to standardize the widths.

The `quick`{.cloze} fox jumped over the lazy dog.

The `quick`{.cloze-sm} fox jumped over the lazy dog.

The `quick`{.cloze-md} fox jumped over the lazy dog.

The `quick`{.cloze-lg} fox jumped over the lazy dog.

The fox jumped over the lazy dog. Use an adjective to
describe the fox, and re-write the sentence.

`The quick fox jumped over the lazy dog.`{.cloze-block}

## Pre-formatted text
These are for presenting pre-formatted, verbatim text, and useful for
highlighting things that must be typed or said exactly as written. They
are used in this document to show examples, and have special styles to
present those. But, this section will show the way it is styled in normal
documents.

There are two types, inline and block.

### Inline
``
You can use `pre-formatted text` inline in a paragraph. 
``

You can use `pre-formatted text` inline in a paragraph. 

### Block

````
```
Ea usu essent antiopam indoctum, modus harum te per. An pro
vidisse vivendum explicari. No atomorum suavitate vis, stet
posidonium quo et. In reque soluta mei, elit debet
moderatius his te. Duo feugiat molestiae ne, autem porro
civibus ut mea. Vix no deserunt senserit, per omnes
rationibus ad.
```
````

```
Ea usu essent antiopam indoctum, modus harum te per. An pro
vidisse vivendum explicari. No atomorum suavitate vis, stet
posidonium quo et. In reque soluta mei, elit debet
moderatius his te. Duo feugiat molestiae ne, autem porro
civibus ut mea. Vix no deserunt senserit, per omnes
rationibus ad.

```
## Headers

::: example

Level 1 headers should only be used for titles of the entire document.
This means each document should have only one first level header. In this
document, the header "Style guide for templates" is the first level
header.

Here are examples for other headers. You can use either Setext or ATX
style.

```
# Pro et veri commodo
Pro et veri commodo. Sed molestie molestiae ut, cu iudico
nostro est. Id contentiones vituperatoribus sit. Te sed

## Ad nec fuisset adipisci disputando
Ad nec fuisset adipisci disputando, vix et dolor aeterno
intellegam. Nam everti causae iuvaret et. Quo ad alienum

### Quo accusam aliquando persecuti no 
Quo accusam aliquando persecuti no, per an habeo electram
signiferumque. Ei discere qualisque sit, quidam sapientem an

#### Usu ei recteque repudiare
Usu ei recteque repudiare, vel an modus blandit, eum
movet assentior cu. Eu falli melius lobortis has, simul

##### Quod dicam disputando ius in
Quod dicam disputando ius in, per id case nulla eripuit.
Dicat vidisse fastidii est at, et equidem dolorem usu.

###### Te vix volutpat necessitatibus
Te vix volutpat necessitatibus, ut qui quis mentitum
pericula. Pri cibo propriae definitionem ne, no nostro
```

# Pro et veri commodo
Pro et veri commodo. Sed molestie molestiae ut, cu iudico
nostro est. Id contentiones vituperatoribus sit. Te sed

## Ad nec fuisset adipisci disputando
Ad nec fuisset adipisci disputando, vix et dolor aeterno
intellegam. Nam everti causae iuvaret et. Quo ad alienum

### Quo accusam aliquando persecuti no 
Quo accusam aliquando persecuti no, per an habeo electram
signiferumque. Ei discere qualisque sit, quidam sapientem an

#### Usu ei recteque repudiare
Usu ei recteque repudiare, vel an modus blandit, eum
movet assentior cu. Eu falli melius lobortis has, simul

##### Quod dicam disputando ius in
Quod dicam disputando ius in, per id case nulla eripuit.
Dicat vidisse fastidii est at, et equidem dolorem usu.

###### Te vix volutpat necessitatibus
Te vix volutpat necessitatibus, ut qui quis mentitum
pericula. Pri cibo propriae definitionem ne, no nostro

:::

## The aside / tip / etc.

The aside is for short bits of text that you want to appear off to the
side of the main text. This is useful for reminders, notes, etc.

### The basic aside
```
> Zril splendide ei qui. Sonet rationibus ne eos, sea aeque
> nostrum erroribus in. Harum timeam mei et. Odio case
> praesent sed in, eu deleniti copiosae volutpat est. Duis
> clita exerci usu te, eam eu corpora perfecto
> vituperatoribus. Elitr ponderum hendrerit mea at, no vim
> labore labitur facilisis, ius ut errem invenire. His
> feugiat delenit id.
```

> Zril splendide ei qui. Sonet rationibus ne eos, sea aeque
> nostrum erroribus in. Harum timeam mei et. Odio case
> praesent sed in, eu deleniti copiosae volutpat est. Duis
> clita exerci usu te, eam eu corpora perfecto
> vituperatoribus. Elitr ponderum hendrerit mea at, no vim
> labore labitur facilisis, ius ut errem invenire. His
> feugiat delenit id.

### What can I use nested blockquotes for?
In Markdown, and of course HTML, it is possible to nest
blockquotes. I don't have a use for this yet, but [let me
know](https://github.com/wjdenny/templates/issues) if you
can think of one.

```
> Facilisi quaestio mea te. Esse quaerendum an vel. Eripuit
> omittantur instructior sea et, pro case erroribus ex.
> Corpora lucilius has ne, eam doctus vivendum ut. Scaevola
> qualisque sit ut, et vim legere dissentiet, partem
> sententiae accommodare sit at. 
>
> > Mazim facilisis has ut. Pri in phaedrum torquatos, no
> > facer exerci perpetua duo. An solum laudem duo. Te pro
> > offendit definitiones, ei ignota appellantur mel.
> 
> Ex vis alii ornatus
> consequat, eleifend conceptam pri ut, et graeci molestie
> adolescens mea. Te nec fierent posidonium intellegam, est
> quando labores percipit id.
```
> Facilisi quaestio mea te. Esse quaerendum an vel. Eripuit
> omittantur instructior sea et, pro case erroribus ex.
> Corpora lucilius has ne, eam doctus vivendum ut. Scaevola
> qualisque sit ut, et vim legere dissentiet, partem
> sententiae accommodare sit at. 
>
> > Mazim facilisis has ut. Pri in phaedrum torquatos, no
> > facer exerci perpetua duo. An solum laudem duo. Te pro
> > offendit definitiones, ei ignota appellantur mel.
> 
> Ex vis alii ornatus
> consequat, eleifend conceptam pri ut, et graeci molestie
> adolescens mea. Te nec fierent posidonium intellegam, est
> quando labores percipit id.

### What about lists inside blockquotes?
Pandoc Markdown also supports ordered and unordered lists
within blockquotes. Just be sure to separate the lists from
the blockquotes with a blank blockquoted line.

```
> In pri cibo choro, liber fabulas quaestio mel ea, has
> doctus definiebas ei. 
> 
> 1. Inermis 
> 1. maluisset 
>		* interpretaris 
>		* an
>	1. usu 
>		1. pro 
>	1. veniam 
>
> deserunt constituam te. Aliquip efficiantur theophrastus
> cum ei. Ne has assum munere contentiones, ut per aperiam
> antiopam dissentias, 
> 
> * dolorum 
> * disputando 
> 
> cum at. In salutandi qualisque sit, qui nibh omnes
> mentitum at.
```

> In pri cibo choro, liber fabulas quaestio mel ea, has
> doctus definiebas ei. 
> 
> 1. Inermis 
> 1. maluisset 
>		* interpretaris 
>		* an
>	1. usu 
>		1. pro 
>	1. veniam 
>
> deserunt constituam te. Aliquip efficiantur theophrastus
> cum ei. Ne has assum munere contentiones, ut per aperiam
> antiopam dissentias, 
> 
> * dolorum 
> * disputando 
> 
> cum at. In salutandi qualisque sit, qui nibh omnes
> mentitum at.

## The checklist
You can use a special style of unordered list to use as a
checklist in your documents.

```
::: checklist
* eggs
* milk
	* soy milk
	* whole milk
* riches
:::
```

::: checklist
* eggs
* milk
	* soy milk
	* whole milk
* riches
:::

## Document-wide numbering?
Start researching this [https://pandoc.org/MANUAL.html#numbered-example-lists](here).

(@)  My first example will be numbered (1).
(@)  My second example will be numbered (2).

Explanation of examples.

(@ref)  My third example will be numbered (3).

Examples can even be named and referred to later, as in the
case with (@ref).

## Definition lists

Quodsi
:		Quodsi corrumpit ex qui. 

## Horizontal rules
To make a horizontal rule, you just need three or more of
`*`, `-`, or `_` on a line by themselves. These can be
separated by spaces or not. 

```
* * *
```

* * *

## Tables
There are a few different ways to express tables and their
alignment in Markdown. See [https://pandoc.org/MANUAL.html]
for a more thorough discussion.

  Right     Left     Center     Default
-------     ------ ----------   -------
     12     12        12            12
    123     123       123          123
      1     1          1             1

Table:  Demonstration of simple table syntax.

## Images

![](placeholder-image.jpg)

![](placeholder-image.jpg){width=50%}

![](placeholder-image.jpg){.inline}

![](placeholder-image.jpg){.rounded}

![](placeholder-image.jpg){.circle}

![](placeholder-image.jpg){.float}

## Footnotes

Here is a footnote reference,[^1] and another.[^longnote]

[^1]: Here is the footnote.

[^longnote]: Here's one with multiple blocks.

	Subsequent paragraphs are indented to show that they
	belong to the previous footnote.

		some.code

	The whole paragraph can be indented, or just the first
	line.  In this way, multi-paragraph footnotes work like
	multi-paragraph list items.

This paragraph won't be part of the note, because it isn't
indented.


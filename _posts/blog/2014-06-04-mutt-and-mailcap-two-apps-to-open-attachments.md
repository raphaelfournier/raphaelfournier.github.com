---
layout: post
title: "Mutt and mailcap: two apps to open attachments"
date: 2014-06-04 14:23
lang: en
categories: blog
tags: 
  - mutt
  - mailcap
  - commandline
---
{% include JB/setup %}

Yesterday, I was looking for the syntax of the "pipe-entry" command in mutt,
which allows to pass a message or an attachment to a specific command. For
instance, for a pdf, one can press "|" then type "acroread -" to open a pdf with
the adobe pdf reader. I did not find the exact syntax but I found that in the
mailcap file, it is possible to configure not only one but two applications to
automatically open a file.

The regular syntax is:

    text/html; /usr/bin/firefox %s;

for an html file. This way, when you visualize the attachments (by pressing
"v"), if you are on an html file, if you press ENTER it opens in firefox. It is
possible add something like this:

    text/html; /usr/bin/firefox %s; print=/usr/bin/chromium %s

so that, while keeping the ENTER behavior, you also get a print behavior (press
"p"): the file may then be open in chromium, with "P". Indeed, it also works
with pdf files:

    application/pdf; /usr/bin/zathura %s; print=/usr/bin/acroread %s

[zathura](http://pwmt.org/projects/zathura/) is a nice pdf viewer but it
sometimes lack some of the features of Acroread (which is way heavier).

[source of this tip](http://wcm1.web.rice.edu/mutt-tips.html)

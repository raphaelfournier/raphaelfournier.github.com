---
layout: post
title: "Newsbeuter: purge articles from a given feed"
date: 2014-09-29 13:17
lang: en
categories: blog
tags: 
  - newsbeuter
  - rss
  - commandline
---
{% include JB/setup %}

Newsbeuter is a great CLI feedreader, which relies on a sqlite database to
store information. Thus, it is possible to overcome missing features by
directly updating the database. 

I have some frequently updated feeds (say, more than 20 new items a day) for
which the archive are useless to me and I would like to be able to delete some
or all of the articles at once, but Newsbeuter only offers a per-article
command ("D", by default, for delete-article), missing a "delete-feed-read"
command which would delete all read items. Here is the command to remove all
unread articles older than 10 days:

    sqlite3 ~/.cache/newsbeuter/cache.db <<< "DELETE FROM rss_item WHERE feedurl LIKE 'http://www.example.com/feed' AND unread = 1 AND pubDate < ( SELECT strftime('%s','now') - (10*86400));";

Just replace:

* ~/.cache/newsbeuter/cache.db by the path where newsbeuter stores its db on your machine
* http://www.example.com/feed by the url of the feed you'd like update
* 10 in 10*86400 by a number of days

If I have time someday, I should fill in a feature request…

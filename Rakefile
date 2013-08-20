require "rubygems"
require "bundler/setup"
require "stringex"

## -- Misc Configs -- ##

public_dir      = "public"    # compiled site directory
source_dir      = "."    # source file directory
stash_dir       = "_stash"    # directory to stash posts for speedy generation
posts_dir       = "_posts"    # directory for blog files


# usage rake isolate[my-post]
#task :isolate, :filename do |t, args|
desc "Move all other posts than the one currently being worked on to a temporary stash location (stash) so regenerating the site happens much quicker."
task :isolate do
  stash_dir = "#{source_dir}/#{stash_dir}"
  FileUtils.mkdir(stash_dir) unless File.exist?(stash_dir)
  Dir.glob("#{source_dir}/#{posts_dir}/*.*") do |post|
    FileUtils.mv post, stash_dir 
    #FileUtils.mv post, stash_dir unless post.include?(args.filename)
  end
end

desc "Move all stashed posts back into the posts directory, ready for site generation."
task :integrate do
  FileUtils.mv Dir.glob("#{source_dir}/#{stash_dir}/*.*"), "#{source_dir}/#{posts_dir}/"
end

desc "Given a title as an argument, create a new post file"
task :write, [:title] do |t, args|
  filename = "#{Time.now.strftime('%Y-%m-%d')}-#{args.title.gsub(/\s/, '_').downcase}.mdwn"
  path = File.join("_posts", filename)
  if File.exist? path; raise RuntimeError.new("Won't clobber #{path}"); end
  File.open(path, 'w') do |file|
    file.write <<-EOS
---
layout: post
title: #{args.title}
date: #{Time.now.strftime('%Y-%m-%d %k:%M:%S')}
tags: 
 - tagshere
 - another one
---
EOS
    end
    puts "Now open #{path} in an editor."
end

desc "Given a title as an argument, create a new post file"
task :writeold, [:title,:date,:hour] do |t, args|
  filename = "#{args.date}-#{args.title.gsub(/\s/, '_').downcase}.mdwn"
  path = File.join("_posts", filename)
  if File.exist? path; raise RuntimeError.new("Won't clobber #{path}"); end
  File.open(path, 'w') do |file|
    file.write <<-EOS
---
layout: post
title: #{args.title}
date: #{args.date} #{args.hour}
tags: 
 - tagshere
 - another one
---
EOS
    end
    puts "Now open #{path} in an editor."
end

desc "draft a post"
task :draft, [:title] do |t, args|
  filename = "#{Time.now.strftime('%Y-%m-%d')}-#{args.title.gsub(/\s/, '_').downcase}.mdwn"
  path = File.join("_drafts", filename)
  if File.exist? path; raise RuntimeError.new("Won't clobber #{path}"); end
  File.open(path, 'w') do |file|
    file.write <<-EOS
---
layout: post
title: #{args.title}
date: #{Time.now.strftime('%Y-%m-%d %k:%M:%S')}
tags: 
 - tagshere
 - another one
---
EOS
    end
    puts "Now open #{path} in an editor."
end
#date: #{Time.now.strftime('%Y-%m-%d %k:%M:%S')}
#filename = "#{Time.now.strftime('%Y-%m-%d')}-#{args.title.gsub(/\s/, '_').downcase}.mdwn"

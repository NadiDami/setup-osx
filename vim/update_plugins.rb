#!/usr/bin/env ruby
# source: http://tammersaleh.com/posts/the-modern-vim-config-with-pathogen/

git_bundles = [
  "https://github.com/altercation/vim-colors-solarized.git"
  "https://github.com/kien/ctrlp.vim.git",
  "https://github.com/rking/ag.vim.git"
  "https://github.com/scrooloose/nerdtree.git",
  "https://github.com/tpope/vim-commentary.git"
  "https://github.com/tpope/vim-endwise.git",
  "https://github.com/thoughtbot/vim-rspec.git",
]

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(ENV["HOME"], ".vim", "bundle")

FileUtils.cd(bundles_dir)

puts "Clearing out your bundles directory...!"
Dir["*"].each {|d| FileUtils.rm_rf d }

git_bundles.each do |url|
  dir = url.split('/').last.sub(/\.git$/, '')
  puts "unpacking #{url} into #{dir}"
  `git clone #{url} #{dir}`
  FileUtils.rm_rf(File.join(dir, ".git"))
end

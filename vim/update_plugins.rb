#!/usr/bin/env ruby

bundle_directory = File.expand_path('~/.vim/bundle')

%w(
  https://github.com/kien/ctrlp.vim.git
  https://github.com/rking/ag.vim.git
  https://github.com/scrooloose/nerdtree.git
  https://github.com/tpope/vim-commentary.git
  https://github.com/tpope/vim-endwise.git
  https://github.com/thoughtbot/vim-rspec.git
).each do |vim_package_url|
  name = File.basename(vim_package_url.split('/').last, '.git')
  path = File.join(bundle_directory, name)
  if File.exist?(path)
    Dir.chdir(path) { system 'git pull' }
  else
    system "git clone #{vim_package_url} #{path}"
  end
end

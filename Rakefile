#!/usr/bin/env ruby
require 'rake'

desc 'Installs dotfiles to home directory'
task :install do
  install_zsh
  switch_to_zsh
  replace_all = false
  files = Dir['*'] - %w[Rakefile README.md oh-my-zsh]
  files << "oh-my-zsh/custom/caseyscarborough.zsh-theme"
  files.each do |file|
    if File.exist?(File.join(ENV['HOME'], ".#{file}"))
      if replace_all
        replace_file(file)
      else
        print "File ~/.#{file} exists. Overwrite? [ynaq]: "
        case $stdin.gets.chomp
        when 'y'
          replace_file(file)
        when 'a'
          replace_all = true
          replace_file(file)
        when 'q'
          abort "Quitting!"
        else
          puts "Skipping ~/.#{file}..."
        end
      end
    else
      create_symlink(file)
    end
  end
end

def create_symlink(file)
  puts "Creating symlink for .#{file}..."
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end

def replace_file(file)
  system %Q{rm -rf "$HOME/.#{file}"}
  create_symlink(file)
end

def install_zsh
  if File.exist?(File.join(ENV['HOME'], '.oh-my-zsh'))
    puts 'oh-my-zsh already installed!'
  else
    print 'Install oh-my-zsh? [ynq]: '
    case $stdin.gets.chomp
    when 'y'
      puts 'Installing oh-my-zsh...'
      system %Q{git clone https://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh"}
    when 'q'
      abort "Quitting!"
    else
      puts 'skipping oh-my-zsh, you will need to change ~/.zshrc'
    end
  end
end

def switch_to_zsh
  if ENV["SHELL"] =~ /zsh/
    puts "Already using zsh!"
  else
    print "Switch to zsh? (recommended) [ynq]: "
    case $stdin.gets.chomp
    when 'y'
      puts "Switching to zsh..."
      system %Q{chsh -s `which zsh`}
    when 'q'
      exit
    else
      puts "Skipping zsh..."
    end
  end
end
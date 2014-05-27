#!/usr/bin/env ruby

%w[irbtools rubygems].each do |gem|
  begin
    require gem
  rescue LoadError
    print "#{gem} is not installed. Would you like to install now? Y/n: "
    input = gets.chomp

    if (input[0, 1].casecmp("y").zero? || input.empty?)
      puts "Installing now..."
      system("gem install #{gem}")
    else
      puts "Skipping installation of #{gem}."
    end
  end
end
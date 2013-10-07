#!/usr/bin/env ruby

%w[irbtools rubygems].each do |gem|
  begin
    require gem
  rescue LoadError
  end
end
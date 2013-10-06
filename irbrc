#!/usr/bin/env ruby

%w[irbtools rubygems] do |gem|
  begin
    require gem
  rescue LoadError
  end
end
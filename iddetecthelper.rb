#!/usr/bin/env ruby
require 'nokogiri'
require 'open-uri'

page = File.open("allebedrijven.html") { |f| Nokogiri::HTML(f) }

roughlist = page.css('.link')
puts roughlist.each{|link| puts link['rel']}
puts ""

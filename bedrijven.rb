#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'

url = "http://www.wiezemstdievindt.be/details.php?id=1929&zoekzin=a"
data = Nokogiri::HTML(open(url))

puts data.css('#content h1').text.strip
puts data.css('td').first.text.strip.gsub!(/\W/, ' ')
puts data.css('.link').first.text.strip
puts ""
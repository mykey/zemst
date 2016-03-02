#!/usr/bin/env ruby

require 'rubygems'
require 'mechanize'
require 'open-uri'

a = Mechanize.new

page = a.get('http://www.wiezemstdievindt.be/ik_zoek.php')
form = page.forms.first
form['help'] = 'a'


puts data.css('#content h1').text.strip
puts data.css('td').first.text.strip.gsub!(/\W/, ' ')
puts data.css('.link').first.text.strip
puts ""

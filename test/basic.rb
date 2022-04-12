#!/usr/bin/env ruby
# ------------------------------------------------------
# File          : basic.rb
# Authors       : ccmywish <ccmywish@qq.com>
# Created on    : <2022-04-12>
# Last modified : <2022-04-12>
#
# basic:
#
#   A basic test, to see if the document on Github has
# changed, that situation, we should fix our program 
# to fit.
# ------------------------------------------------------

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML5(URI.open("https://github.com/cli/cli/releases"))

puts doc.css("li>a[href^='/cli/cli/releases/download']").to_a.map { _1['href'] }

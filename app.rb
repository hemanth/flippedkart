require 'rubygems'
require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do
  url = "http://www.flipkart.com/view-books/1/bestsellers"
  data = Nokogiri::HTML(open(url))
  @title=data.css('h2.fk-srch-item-title.fksd-bodytext')
  @price=data.css('b.final-price')
  erb :shows
end

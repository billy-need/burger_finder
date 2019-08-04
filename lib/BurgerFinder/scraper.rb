require 'open-uri'
require "nokogiri"

class Scraper

  def self.main_page
    Nokogiri::HTML(open("https://foursquare.com/explore?mode=url&near=90210&q=Burger"))
  end

  def self.all_results
    self.main_page.css("div.venueDetails").each do |x|
      puts x.text
    end
  end

  def self.make_restaurants
    self.all_results.each do |burger_joint|
      puts array = burger_joint.gsub(". "," • ").split(" • ")
      puts burger_joint.name = array[1]
      puts burger_joint.rating = array[0]
      puts burger_joint.location = array[1]
      puts "***"
    end
  end

  # attr_accessor :name, :see_burgers, :zip
  #
  # path = "https://foursquare.com/explore?mode=url&near=#{CLI.zip}&q=Burger"
  #
  # def initialize#(path)
  #   puts "test"
  # end
end
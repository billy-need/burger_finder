class Scraper

  @@file = File.read("fixtures/The 15 Best Places for Burgers in Baltimore.htm")
  @@doc = Nokogiri::HTML(@@file)

  def self.scrape_main_page

    venues = @@doc.css("div.venueInfo")
    venues.each do |venue|

      name = venue.css("a.venueLink").text
      rating = venue.css("span.venueScore span").text
      neighborhood = venues.css("span.tipCount").text.split(" · ")[1]
      website = venue.css("a.venueLink").attr("href").value
      venue = Restaurants.new(name, rating, neighborhood, website)

    end

    venues
  end

  def self.scrape_detail_page(input)
    input -= 1
    url = Restaurants.all[input].website
    doc = Nokogiri::HTML(open(url, 'User-Agent' => 'ruby'))

    puts "#{Restaurants.all[input].name} - #{Restaurants.all[input].rating}/10 - #{doc.css("span.darken").text}"
    puts "\n"

    puts "Address:"
    puts doc.css("div.adr span")[0].text
    puts "#{doc.css("div.adr span")[1].text} #{doc.css("div.adr span")[2].text} #{doc.css("div.adr span")[3].text}"
    puts "\n"

    puts "Phone:"
    puts doc.css("span.tel").text
    puts "\n"

    puts "Website:"
    puts doc.css("a.url").attribute("href").value
    puts "\n"

    puts "Popular Tip:"
    puts doc.css("div.tipText").first.text

  end

end

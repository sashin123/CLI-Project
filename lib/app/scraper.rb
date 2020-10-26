class Scraper
    def initialize
         @base_url = "https://www.metacritic.com"
    end

    def first_scrape 
        html = open(@base_url + "/game")
        html_parsed_to_elements = Nokogiri::HTML(html)
        review_elements = html_parsed_to_elements.css('.clamp-summary-wrap')

        review_elements.each do |review_element|
            game_title = review_element.css('h3').text
            release_date = review_element.css('span').text


        binding.pry
    end
end 

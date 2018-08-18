#!/usr/bin/env ruby

require 'optparse'
require 'open-uri'
require 'nokogiri'

module HrefScraper
  def self.fetch_html(url)
    html = open(url)
    Nokogiri::HTML(html)
  end

  OptionParser.new do |opt|
    opt.on('-u', '--url URL', 'URL to scrape links from') do |url|
      url !~ /^http/ && abort('Invalid URL passed')
      anchors = fetch_html(url).xpath('//a')
      hrefs = anchors.map { |tag| tag['href'] }
      hrefs.each do |link|
        if link =~ /^http/
          puts link
        end
    end
    end
  end.parse!
end

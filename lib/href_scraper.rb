#!/usr/bin/env ruby

require 'optparse'
require 'open-uri'
require 'nokogiri'
require 'json'

module HrefScraper
  def self.fetch_html(url)
    html = open(url)
    Nokogiri::HTML(html)
  end

  OptionParser.new do |opt|
    opt.on('-u', '--url URL', 'URL to scrape links from') do |url|
      url !~ /^http/ && abort('Invalid URL passed')
      links = []
      anchors = fetch_html(url).xpath('//a')
      hrefs = anchors.map { |tag| tag['href'] }
      hrefs.each do |link|
        if link =~ /^http/
          links.push(link)
        end
    end
    puts links.to_json
    end
  end.parse!
end

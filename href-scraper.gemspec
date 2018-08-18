Gem::Specification.new do |spec|
  spec.name          = "href-scraper"
  spec.version       = "0.1.0"
  spec.authors       = ["Caleb Lemoine"]
  spec.email         = ["caleblemoine@gmail.comS"]
  spec.licenses         = ['MIT']
  spec.summary       = "CLI to scrape hrefs"
  spec.description   = "Scrape hrefs from a single webpage"
  spec.homepage      = "https://github.com/circa10a/href-scraper.git"

  spec.files         = ["lib/href-scraper.rb"]

  spec.executables   = ["href-scraper"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
end

require 'rubygems'
require 'httparty'

class StarSearcher
  include HTTParty

  def initialize(host)
    self.class.base_uri host
  end

  def feed(page=1)
    self.class.get("/stars.json", {:query => {:page => page}})
  end

  def search(query, page=1)
    self.class.get("/search.json", {:query => {:q => query, :page => page}})
  end

  def by_author(author, page=1)
    self.class.get("/authors/#{author}.json", {:query => {:page => page}})
  end
end

require 'rest-client'

class Calendar

  attr_reader :attributes

def initialize
  @attributes = attributes
end

def self.fetch
  JSON.parse(RestClient.get('http://api.meetup.com/2/events.json', params: {sign: true, group_id: 2252591, key: '5a67321b745353471a65334647631'} ))
end

#   def self.all
#     fetch({})
#   end

#   def self.search_images(search_query)
#     fetch({"and[category]" => "Images", text: search_query})
#   end
  

end


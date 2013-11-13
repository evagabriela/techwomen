require 'rest-client'
require 'pry'

class Event < ActiveRecord::Base

  attr_accessible :attributes, :title, :start_time, :location,
                  :group, :category, :address, :link, :description

  def self.fetch
    JSON.parse(RestClient.get('http://api.meetup.com/2/events.json', params: {sign: true, group_id: "2252591, 3286622", key: '5a67321b745353471a65334647631'}))
  end

  

  def self.make_event
    meetup_event = Event.fetch.first[1]
    meetup_event.each do |event|
      Event.create(
      title: event['name'],
      start_time: self.format_date((event['time'].to_i)),
      group: event['group']['name'],
      location: event['venue']['name'],
      address: event['venue']['address_1'],
      # category: event['']
      link: event['event_url'],
      # description: event['description']
       )
    end
  end

  def self.format_date(handsomedate)
    Time.at((handsomedate / 1000)).to_datetime
  end

end

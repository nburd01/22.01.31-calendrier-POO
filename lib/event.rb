require "pry"
require "time"

class Event
    attr_accessor :start_date
    @@all_event = []

    def initialize(event_name, event_start_date,event_duration, event_attendees)
        @event = event_name
        @date = Time.parse(event_start_date) + 24 * 60 *60
        @duration = event_duration.to_i
        @attendees = Array.new(event_attendees)
        @@all_event << self
    end

    def postpone_24h(event_start_date)
        @date2 = Time.parse(event_start_date) + 36000
        @@all_event << self
    end

    def self.all
        return @@all_event
    end
    
end

binding.pry
puts "End of line"

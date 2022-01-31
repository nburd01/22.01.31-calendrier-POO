require "pry"
class User
    attr_accessor :email
    @@user_count = 0

    def initialize(email_to_save)
        @email = email_to_save
        @@user_count = @@user_count +1
    end

    def self.count
        return @@user_count
    end
end
binding.pry
puts "end of line"

*** 2.3.1 *** "Les attributs de l'événement"

require "pry"
require "time"

class Event
    attr_accessor :start_date
    @@all_event = []

    def initialize(event_name, event_start_date,event_duration, event_attendees)
        @event = event_name
        @date = Time.parse(event_start_date)
        @duration = event_duration
        @attendees = Array.new(event_attendees)
        @@all_event << self
    end

    def self.all
        return @@all_event
    end
    
end

binding.pry
puts "End of line"

*** 2.3.2 *** "Décaler un événement"

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


*** 2.3.3 *** "Informations additionnelles sur l'évènement"


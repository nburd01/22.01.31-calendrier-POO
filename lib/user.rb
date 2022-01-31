require "pry"

class User #création de la classe User
    attr_accessor :email, :age #
    @@all_users = [] #la variable de classe qui regroupe tout

    def initialize(email_to_add, age_to_add) #besoin de faire appel à initialize pour ajouter
        @email = email_to_add 
        @age = age_to_add 
        @@all_users << {:age => :email}
        
    end

    def self.all
        puts @@all_users
    end
    
end



binding.pry
puts "Fin de la ligne"

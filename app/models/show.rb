require 'pry'

class Show < ActiveRecord::Base


    def self.highest_rating
      Show.maximum("rating") 
    end

    # We need to loop through each show
    # compair the rating of each show to somehting (counter)
    # We also need to set a variable in order to assign that show
    # to 
    def self.most_popular_show
     #  binding.pry
     count = 0
     popular_show = ""
     Show.all.each do |show|
        while count < show.rating
            popular_show = show
            count += 1
            end
        end
     # binding.pry
        popular_show
    end

    def self.lowest_rating
        Show.minimum("rating")
    end

    def self.least_popular_show
        count = 0 
        bad_show = ""
        Show.all.each do |show|
        binding.pry
        end
        
    end
    





end
#binding.pry




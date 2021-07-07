require 'pry'

class Show < ActiveRecord::Base

    def self.highest_rating
        self.maximum(:rating)
    end

    def self.most_popular_show
        self.all.find {|s| s.rating == self.highest_rating}
    end

    def self.lowest_rating
        # binding.pry
        self.minimum(:rating)
    end

    def self.least_popular_show
        # binding.pry
        self.all.find {|s| s.rating == self.lowest_rating}
        # binding.pry
    end

    def self.ratings_sum
        self.sum(:rating)
    end

    def self.popular_shows
        self.all.select {|s| s.rating > 5}
    end

    def self.shows_by_alphabetical_order
        self.all.sort_by {|s| -s[:name]}
    end
end
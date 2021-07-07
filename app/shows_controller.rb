require 'pry'

def highest_rating
    Show.maximum(:rating)
end

binding.pry
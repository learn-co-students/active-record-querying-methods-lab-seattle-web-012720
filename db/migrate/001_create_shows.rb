class CreateShows < ActiveRecord::Migration[5.2]

    def change
        create_table :shows do |element|
            element.string :name
            element.string :network
            element.string :day
            element.integer :rating
        end
    end

end
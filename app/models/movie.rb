class Movie < ActiveRecord::Base
    def self.sort_based(attribute, order)                 
      order("#{attribute} #{order}")
    end
  end
  
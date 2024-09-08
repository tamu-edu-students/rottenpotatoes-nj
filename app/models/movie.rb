class Movie < ActiveRecord::Base
    # Class method to sort movies based on the attribute and order
    def self.sorted_by(attribute, order)
      valid_attributes = %w[title rating release_date]  # Allowed attributes for sorting
      valid_order = %w[asc desc]                        # Allowed orders
  
      # Default values if parameters are invalid
      attribute = 'title' unless valid_attributes.include?(attribute)
      order = 'asc' unless valid_order.include?(order)
  
      # Apply sorting using ActiveRecord's `order` method
      order("#{attribute} #{order}")
    end
  end
  
class Review < ActiveRecord::Base
  belongs_to :customer
  belongs_to :restaurant

  def full_review
    #good
    "Review for #{restaurant.name} by #{customer.first_name} #{customer.last_name}: #{self.star_rating} starts."
  end
end
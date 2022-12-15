class Restaurant < ActiveRecord::Base
  has_many :reviews
  has_many :customers, through: :reviews

  def self.fanciest
    #good
    self.all.order(:price).last
  end

  def all_reviews
    #doesnt work
    #select_all? 
    #count?
  
    Review.select_all("Review for #{restaurant.name} by #{customer.first_name}#{customer.last_name}: #{insert review star_rating} stars.").count
  end
end
class Customer < ActiveRecord::Base
  has_many :reviews
  has_many :restaurants, through: :reviews

  def full_name
    #good
    "#{first_name} #{last_name}"
  end

  def favorite_restaurant
    #need to fix
    #max_by
    #returns the restaurant instance that has the highest star rating from this customer
    Restaurant.all.max_by { |r| r.star_rating }.count
  end

  def add_review(restaurant, star_rating)
    #good
    Review.create(restaurant: restaurant, customer: self, star_rating: star_rating)
  end

  def delete_reviews(restaurant)
    #fix this
    #might be working 
    Review.delete(restaurant: restaurant, customer: self)
  end
end
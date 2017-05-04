class Product < ApplicationRecord
    validates :name, presence: true
    has_many :orders
    has_many :comments

  def self.search(search_term)
    @products = Product.search(search_term)
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_asc.last
  end

  def average_rating
  comments.average(:rating).to_f
end

end

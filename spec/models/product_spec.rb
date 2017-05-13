require 'rails_helper'

describe Product do
  before do
    @product = Product.create!(name: "generic painting")
    @user = User.create!(first_name: "Taro", last_name: "Yamada", email: "yamadat@gmail.com", password: "monogatari")
    @product.comments.create!(rating: 1, user: @user, body: "Not original at all!")
    @product.comments.create!(rating: 3, user: @user, body: "Not bad...")
    @product.comments.create!(rating: 5, user: @user, body: "I changed my mind, I like it!")
  end

  it "returns the average rating of all comments" do
    expect(@product.average_rating).to eq 3
  end

  it "is not valid" do
    expect(Product.new(description: "Nice bike")).not_to be_valid
  end
end
FactoryGirl.define do

  factory :product1, class: Product do
    name "generic painting"
  end

  factory :comment, class: Comment do
    rating 3
    user
    association :product_id, factory: :product1
    body "Not original at all!"
  end
  
end


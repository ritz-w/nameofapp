FactoryGirl.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  
  factory :user, class: User do
    email
    password "monogatari"
    first_name "Taro"
    last_name "Yamada"
    admin false
  end

  factory :user2, class: User do
    email
    password "monogatari"
    first_name "Arya"
    last_name "Stark"
    admin false
  end

  factory :admin, class: User do
    email
    password "gameofthrones"
    first_name "Jon"
    last_name "Snow"
    admin true
  end 
end
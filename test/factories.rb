FactoryGirl.define do
  factory :user do
    sequence :email do |n|
      "person#{n}@gmail.com"
    end
    password "abc12345"
    password_confirmation "abc12345"
  end

  factory :place do
    association :user
    name "McDonalds"
    address "123 Any St."
    description "Big Mac Attack!"
  end

  factory :comment do
    message "just making a comment"
    rating "1_star"
    association :user
    association :place
  end
end
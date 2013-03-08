FactoryGirl.define do
  factory :user do
    name     "Rohan Moitra"
    email    "rohanmoitra@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
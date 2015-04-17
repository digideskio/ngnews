FactoryGirl.define do
  factory :item do
    body "MyText"
    kind "MyString"
    source "MyString"
    is_public false
  end
end

FactoryGirl.define do
  factory :item do
    body { Faker::Lorem.sentence }
    category "category"
    source { Faker::Internet.url }
    is_public false
    start_date { 2.days.ago }
    sub_category "subcategory"
  end
end

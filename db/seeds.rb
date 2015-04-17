cats = CategoriesRepository.new.all
100.times { FactoryGirl.create :item, category: cats.sample }

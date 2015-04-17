class CategoriesRepository
  def all
    %w(
      people
      link
      props
      blog
      event
      office
      misc
    )
  end

  def subcategories_for(category_name)
    @subcategories ||= build_subcategories
    @subcategories[category_name.to_sym] || []
  end

  delegate :include?, to: :all

  private

  def build_subcategories
    {
      people: %w(new promotion goodbye),
    }
  end
end

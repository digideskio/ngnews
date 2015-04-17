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

  delegate :include?, to: :all
end

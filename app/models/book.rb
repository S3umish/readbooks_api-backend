class Book < ApplicationRecord
    belongs_to :category

  def capitalized_title
      self.title.upcase
  end
end

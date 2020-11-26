class Book < ApplicationRecord
  validates :title, presence: true

  has_and_belongs_to_many :authors
  has_and_belongs_to_many :authors

  def author
    authors.map { |a| a.name }.join(', ')
  end

end

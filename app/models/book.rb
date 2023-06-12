class Book < ApplicationRecord
  has_many :add_author_to_books
  has_many :authors, through: :add_author_to_books

  attr_accessor :author_signature

  def add_author(author)
    author.book = self
  end

end

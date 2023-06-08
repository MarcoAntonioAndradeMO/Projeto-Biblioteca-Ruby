class Book < ApplicationRecord
  has_many :add_author_to_books
  has_many :authors, through: :add_author_to_books

  attr_accessor :author

  def add_author(author)
    author.book = self
  end

  def add_author_by_signature(signature)
    author = Author.find_by(signature: signature)
    authors << author if author
  end
end

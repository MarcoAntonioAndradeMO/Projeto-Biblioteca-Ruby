class Book < ApplicationRecord
  belongs_to :author
  attr_accessor :author_signature
end

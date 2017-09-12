class Book < ApplicationRecord
  has_many :authorships
  has_many :authors, :through => :authorships
  # attr_accessor :name, :author_tokens
  
  def author_tokens=(ids)
    self.author_ids = ids.split(",")
  end

  def self.authorship(book,author_tokens)
  		Authorship.create(book_id: book,author_id: author_tokens)
  end
       
end

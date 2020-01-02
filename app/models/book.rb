class Book < ApplicationRecord
  belongs_to :genre
  belongs_to :author
  has_many :reviews
  accepts_nested_attributes_for :author
  validates :title, presence: true
  # validate :unique_book?

  def self.titles
    Book.all.map do |book|
      book.title
    end
  end

  def self.authors
    Book.all.map do |book|
      book.author
    end
  end

  def author_attributes=(author_attributes) 
    author = Author.find_or_create_by(author_attributes)
    self.author = author
  end

  # def unique_book?
  #   if self.title && self.author && Book.titles.select do |title|
  #       self.title ==  title 
  #     end &&  Book.authors.select do |author|
  #       self.author == author
  #     end
  #     self.errors.add(:title, "has been added already")
  #   end
  # end

end

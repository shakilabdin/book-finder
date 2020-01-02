class Author < ApplicationRecord
    has_many :books 
    validates :name, presence: true

    def author_attributes=(author_attributes)
        author_attributes.values.each do |author_attribute|
          author = author.find_or_create_by(author_attribute)
          self.authors << author
        end
    end
end

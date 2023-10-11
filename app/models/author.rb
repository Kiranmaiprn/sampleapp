class Author < ApplicationRecord
    has_many :books, -> {where("year_published>?",2015)}
end

class Post < ApplicationRecord
    validates :title, :body, :author, presence: true 
    has_many :comments
end

class Post < ApplicationRecord
  include PgSearch 
  extend FriendlyId


  validates :title, :body, :author, presence: true 
  
  has_many :comments

  friendly_id :title, use: :slugged
  
  pg_search_scope :search,
   agaist: %i[title author body],
   associated_agaist: { comments: %i[body] }
end

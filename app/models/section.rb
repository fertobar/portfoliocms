class Section < ActiveRecord::Base
  has_many :posts
  validates :title, presence: true
end

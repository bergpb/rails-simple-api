class Article < ApplicationRecord
  validates :title, presence: true
	validates :content, presence: true
  validates :user_id, presence: true
  has_one :user
end

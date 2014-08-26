class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :post

	validates :comment_text, presence: true, length: {minimum: 2}

	validates :post_id, presence: true
  
	validates :user_id, presence: true
end

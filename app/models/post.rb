class Post < ActiveRecord::Base
	belongs_to :user

	validates :title, presence: true, length: {minimum: 2}
	validates :problem, presence: true, length: {minimum: 2}
	validates :solution, presence: true, length: {minimum: 2}
  
  	validates :user_id, presence: true
end

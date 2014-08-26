class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	validates :title, presence: true, length: {minimum: 2}
	validates :problem, presence: true, length: {minimum: 2}
	validates :solution, presence: true, length: {minimum: 2}
  
  	validates :user_id, presence: true

end

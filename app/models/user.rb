class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, :email, presence: true
  validates :username, presence: true,
                          uniqueness: true,
                          format: {
                                  with: /\A[a-zA-Z0-9\-\_]+\Z/,
                                    
                                  message: "Must be formatted correctly."
                                  }

  has_many :posts
  has_many :comments

  def full_name
    first_name.capitalize + " " + last_name.capitalize
  end

  def gravatar_url
    stripped_email = email.strip
    downcased_email = stripped_email.downcase
    hash = Digest::MD5.hexdigest(downcased_email)
    
    "http://gravatar.com/avatar/#{hash}"
  end
end

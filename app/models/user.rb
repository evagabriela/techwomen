class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :email, :password, :password_confirmation, presence: true

  validates :email, :username, uniqueness: true

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :location, :technologies, :blerb, :facebook, :linkedin, :blog, :github, :personal_site, :other_site, :company, :job_title
  # attr_accessible :title, :body

  def gravatar(size=120)
    hash = Digest::MD5.hexdigest(self.email.downcase)
    "http://www.gravatar.com/avatar/#{hash}?s=#{size}"
  end
end

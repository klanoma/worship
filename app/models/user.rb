class User < ActiveRecord::Base
  #callbacks
  after_create do
    self.account_id = self.id
    self.save
  end

  #relations
  has_many:services
  has_many:volunteers
  has_many:lectionary_notes

  #validation
  validates :first_name, :last_name, :presence => true

  #devise stuff
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :trackable, :validatable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :church_name, :email, :password, :password_confirmation, :remember_me

end

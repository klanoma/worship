class Volunteer < ActiveRecord::Base
  #relations
  belongs_to:user
  belongs_to:state

  #validation
  validates :first_name, :last_name, presence: true
  validates :email, allow_blank: true, format: {
    with: %r{/\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/}i,
    message: 'must be a valid'
  }
end

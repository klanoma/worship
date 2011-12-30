class Volunteer < ActiveRecord::Base
  #relations
  belongs_to:user
  belongs_to:state

  #validation
  validates :first_name, :last_name, presence: true
  validates :email, allow_blank: true, format: {
    with: /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i,
    message: 'must be a valid'
  }
end

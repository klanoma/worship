class Volunteer < ActiveRecord::Base
  #relations
  belongs_to:user
  belongs_to:state

  #validation
  validates :first_name, :last_name, :presence => true
  validates :email, :allow_blank => true, :format => {
    :with => /^([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})$/i,
    :message => 'must be a valid'
  }
  
  def full_address
    @full_address = ''
    @full_address += self.address + '<br>' if self.address.to_s != ''
    @full_address += self.city if self.city
    @full_address += ', ' if self.city.to_s != '' && self.state
    @full_address += self.state.name if self.state
    @full_address += ' ' + self.zip_code if self.zip_code.to_s != ''
  end
  
  def phone_formatted
    self.phone
  end
end

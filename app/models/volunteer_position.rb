class VolunteerPosition < ActiveRecord::Base
  #relations
  belongs_to:user
  belongs_to:volunteer
end

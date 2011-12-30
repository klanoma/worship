class LectionaryNote < ActiveRecord::Base
  belongs_to:lectionary_week
  belongs_to:user
end

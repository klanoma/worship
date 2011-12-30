class LectionaryWeek < ActiveRecord::Base
  belongs_to:lectionary_order
  has_many:services
  has_many:lectionary_notes
end

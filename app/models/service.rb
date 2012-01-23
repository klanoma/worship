class Service < ActiveRecord::Base
  belongs_to:user
  belongs_to:lectionary_week

  #
  # returns formatted string made up lectionary year, week, and scripture
  #
  def lectionary_week_string
    @lectionary_week_string = 'kk'

    if @lectionary_week
      @lectionary_week_string = @lectionary_week.year + @lectionary_week.week + ' ' + @lectionary_week.scripture
    end
  end
end

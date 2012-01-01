class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @log_count = Service.find_all_by_user_id(current_user.account_id).size
    @week_count = 0
    @year_count = 0
    @volunteer_count = Volunteer.find_all_by_user_id(current_user.account_id).size
  end

  def search
  end

end

class PublicController < ApplicationController
  def index
    if user_signed_in?
      @log_count = Service.find_all_by_user_id(current_user.account_id).size
      @week_count = 0
      @year_count = 0
      @volunteer_count = Volunteer.find_all_by_user_id(current_user.account_id).size
    end
  end

  def contact
  end

  def help
  end

  def privacy
  end

  def about
  end

end

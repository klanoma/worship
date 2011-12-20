class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
  end

  def settings
  end

  def search
  end

  def users
  end

  def calendar
  end

end

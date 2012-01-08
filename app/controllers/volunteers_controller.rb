class VolunteersController < ApplicationController
  before_filter :authenticate_user!
  # GET /volunteers
  # GET /volunteers.json
  def index
    @volunteers = Volunteer.find_all_by_user_id(current_user.account_id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @volunteers }
    end
  end

  # GET /volunteers/1
  # GET /volunteers/1.json
  def show
    @volunteer = Volunteer.find_by_id_and_user_id!(params[:id], current_user.account_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @volunteer }
    end
  end

  # GET /volunteers/new
  # GET /volunteers/new.json
  def new
    @volunteer = Volunteer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @volunteer }
    end
  end

  # GET /volunteers/1/edit
  def edit
    @volunteer = Volunteer.find_by_id_and_user_id!(params[:id], current_user.account_id)
  end

  # POST /volunteers
  # POST /volunteers.json
  def create
    @volunteer = Volunteer.new(params[:volunteer])

    respond_to do |format|
      @volunteer.user_id = current_user.account_id
      if @volunteer.save
        format.html { redirect_to @volunteer, notice: 'Volunteer was successfully created.' }
        format.json { render json: @volunteer, status: :created, location: @volunteer }
      else
        format.html { render action: "new" }
        format.json { render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /volunteers/1
  # PUT /volunteers/1.json
  def update
    @volunteer = Volunteer.find_by_id_and_user_id!(params[:id], current_user.account_id)

    respond_to do |format|
      @volunteer.user_id = current_user.account_id
      if @volunteer.update_attributes(params[:volunteer])
        format.html { redirect_to @volunteer, notice: 'Volunteer was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @volunteer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteers/1
  # DELETE /volunteers/1.json
  def destroy
    @volunteer = Volunteer.find_by_id_and_user_id!(params[:id], current_user.account_id)
    @volunteer.destroy

    respond_to do |format|
      format.html { redirect_to volunteers_url }
      format.json { head :ok }
    end
  end

  #returns true if the current user has the ability to
=begin
  def authenticate_crud(volunteer, action)

    # only the main account holder can create, update, or delete
    if action == 'read'
      volunteer.user_id == current_user.account_id
    else
      volunteer.user_id == current_user.user_id
    end
  end
=end
end

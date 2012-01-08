class ServicesController < ApplicationController
  before_filter :authenticate_user!

  # GET /services
  # GET /services.json
  def index
    @services = Service.find_all_by_user_id(current_user.account_id)

    respond_to do |format|
      format.html # index.html.haml
      format.json { render json: @services }
    end
  end

  # GET /services/1
  # GET /services/1.json
  def show
    @service = Service.find_by_id_and_user_id!(params[:id], current_user.account_id)

    respond_to do |format|
      format.html # show.html.haml
      format.json { render json: @service }
    end
  end

  # GET /services/new
  # GET /services/new.json
  def new
    @service = Service.new
    @service.date = Time.now.strftime('%Y-%m-%d ')

    respond_to do |format|
      format.html # new.html.haml
      format.json { render json: @service }
    end
  end

  # GET /services/1/edit
  def edit
    @service = Service.find_by_id_and_user_id!(params[:id], current_user.account_id)
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(params[:service])

    respond_to do |format|
      @service.user_id = current_user.account_id
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render json: @service, status: :created, location: @service }
      else
        format.html { render action: "new" }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /services/1
  # PUT /services/1.json
  def update
    @service = Service.find_by_id_and_user_id!(params[:id], current_user.account_id)

    respond_to do |format|
      @service.user_id = current_user.account_id
      if @service.update_attributes(params[:service])
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service = Service.find_by_id_and_user_id!(params[:id], current_user.account_id)
    @service.destroy

    respond_to do |format|
      format.html { redirect_to services_url }
      format.json { head :ok }
    end
  end
end
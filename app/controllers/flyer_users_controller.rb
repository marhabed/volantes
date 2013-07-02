class FlyerUsersController < ApplicationController

  # GET /flyer_users
  # GET /flyer_users.json
  def index
    @flyer_users = FlyerUser.all
    respond_to do |format|
      format.html # index_.html.erb
      format.json { render json: @flyer_users }
    end
  end

  # GET /flyer_users/1
  # GET /flyer_users/1.json
  def show
    @flyer_user = FlyerUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flyer_user }
    end
  end

  # GET /flyer_users/new
  # GET /flyer_users/new.json
  def new
    @flyer_user = FlyerUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @flyer_user }
    end
  end

  # GET /flyer_users/1/edit
  def edit
    @flyer_user = FlyerUser.find(params[:id])
  end

  # POST /flyer_users
  # POST /flyer_users.json
  def create
    @flyer_user = FlyerUser.new(params[:flyer_user])

    respond_to do |format|
      if @flyer_user.save
        format.html { redirect_to @flyer_user, notice: 'Flyer user was successfully created.' }
        format.json { render json: @flyer_user, status: :created, location: @flyer_user }
      else
        format.html { render action: "new" }
        format.json { render json: @flyer_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /flyer_users/1
  # PUT /flyer_users/1.json
  def update
    @flyer_user = FlyerUser.find(params[:id])

    respond_to do |format|
      if @flyer_user.update_attributes(params[:flyer_user])
        format.html { redirect_to @flyer_user, notice: 'Flyer user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @flyer_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flyer_users/1
  # DELETE /flyer_users/1.json
  def destroy
    @flyer_user = FlyerUser.find(params[:id])
    @flyer_user.destroy

    respond_to do |format|
      format.html { redirect_to flyer_users_url }
      format.json { head :no_content }
    end
  end
end

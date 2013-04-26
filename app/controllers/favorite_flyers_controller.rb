class FavoriteFlyersController < ApplicationController
  # GET /favorite_flyers
  # GET /favorite_flyers.json
  def index
    @favorite_flyers = FavoriteFlyer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @favorite_flyers }
    end
  end

  # GET /favorite_flyers/1
  # GET /favorite_flyers/1.json
  def show
    @favorite_flyer = FavoriteFlyer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @favorite_flyer }
    end
  end

  # GET /favorite_flyers/new
  # GET /favorite_flyers/new.json
  def new
    @favorite_flyer = FavoriteFlyer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @favorite_flyer }
    end
  end

  # GET /favorite_flyers/1/edit
  def edit
    @favorite_flyer = FavoriteFlyer.find(params[:id])
  end

  # POST /favorite_flyers
  # POST /favorite_flyers.json
  def create
    @favorite_flyer = FavoriteFlyer.new(params[:favorite_flyer])

    respond_to do |format|
      if @favorite_flyer.save
        format.html { redirect_to @favorite_flyer, notice: 'Favorite flyer was successfully created.' }
        format.json { render json: @favorite_flyer, status: :created, location: @favorite_flyer }
      else
        format.html { render action: "new" }
        format.json { render json: @favorite_flyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /favorite_flyers/1
  # PUT /favorite_flyers/1.json
  def update
    @favorite_flyer = FavoriteFlyer.find(params[:id])

    respond_to do |format|
      if @favorite_flyer.update_attributes(params[:favorite_flyer])
        format.html { redirect_to @favorite_flyer, notice: 'Favorite flyer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @favorite_flyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_flyers/1
  # DELETE /favorite_flyers/1.json
  def destroy
    @favorite_flyer = FavoriteFlyer.find(params[:id])
    @favorite_flyer.destroy

    respond_to do |format|
      format.html { redirect_to favorite_flyers_url }
      format.json { head :no_content }
    end
  end
end

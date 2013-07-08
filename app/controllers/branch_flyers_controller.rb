class BranchFlyersController < ApplicationController
  # GET /branch_flyers
  # GET /branch_flyers.json
  def index
    @branch_flyers = BranchFlyer.all

    respond_to do |format|
      format.html # index_.html.erb
      format.json { render json: @branch_flyers }
    end
  end

  # GET /branch_flyers/1
  # GET /branch_flyers/1.json
  def show
    @branch_flyer = BranchFlyer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @branch_flyer }
    end
  end

  # GET /branch_flyers/new
  # GET /branch_flyers/new.json
  def new
    @branch_flyer = BranchFlyer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @branch_flyer }
    end
  end

  # GET /branch_flyers/1/edit
  def edit
    @branch_flyer = BranchFlyer.find(params[:id])
  end

  # POST /branch_flyers
  # POST /branch_flyers.json
  def create
    @branch_flyer = BranchFlyer.new(params[:branch_flyer])

    respond_to do |format|
      if @branch_flyer.save
        format.html { redirect_to @branch_flyer, notice: 'Branch flyer was successfully created.' }
        format.json { render json: @branch_flyer, status: :created, location: @branch_flyer }
      else
        format.html { render action: "new" }
        format.json { render json: @branch_flyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /branch_flyers/1
  # PUT /branch_flyers/1.json
  def update
    @branch_flyer = BranchFlyer.find(params[:id])

    respond_to do |format|
      if @branch_flyer.update_attributes(params[:branch_flyer])
        format.html { redirect_to @branch_flyer, notice: 'Branch flyer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @branch_flyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /branch_flyers/1
  # DELETE /branch_flyers/1.json
  def destroy
    @branch_flyer = BranchFlyer.find(params[:id])
    @branch_flyer.destroy

    respond_to do |format|
      format.html { redirect_to branch_flyers_url }
      format.json { head :no_content }
    end
  end
end

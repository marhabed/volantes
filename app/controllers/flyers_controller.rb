class FlyersController < ApplicationController
  # GET /flyers
  # GET /flyers.json
  def index
    flyers = Branch.includes(:flyers).find(params[:branch_id]).flyers
    
    @map = Hash.new
    @map["flyers"] = flyers
    @map["branch_id"] = params[:branch_id]
    
    respond_to do |format|
      format.html # index_.html.erb
      format.json { render json: @map }
    end
  end

  # GET /flyers/1
  # GET /flyers/1.json
  def show
    @flyer = Flyer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @flyer }
    end
  end

  # GET /flyers/new
  # GET /flyers/new.json
  def new
    
    if !current_user.company.branches.where("branches.id = #{params[:branch_id]}").empty?
      @flyer = Flyer.new
      @branch_id = params[:branch_id]
      
      branches = @flyer.branch_flyers.build
      
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: {flyer: @flyer, branch_id: params[:branch_id]} }
      end
    else
      respond_to do |format|
        format.html { render  action: "../error/error" }
      end
     # format.json { render json: @flyer.errors, status: :unprocessable_entity }  
     end
  end

  # GET /flyers/1/edit
  def edit
    
    
    @flyer = Flyer.find(params[:id])
    @branch_id = params[:branch_id]
  end

  # POST /flyers
  # POST /flyers.json
  def create
    @flyer = Flyer.new(params[:flyer])

    respond_to do |format|
      if @flyer.save
        format.html { redirect_to @flyer, notice: 'Flyer was successfully created.' }
        format.json { render json: @flyer, status: :created, location: @flyer }
      else
        format.html { render action: "new" }
        format.json { render json: @flyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /flyers/1
  # PUT /flyers/1.json
  def update
    @flyer = Flyer.find(params[:id])

    respond_to do |format|
      if @flyer.update_attributes(params[:flyer])
        format.html { redirect_to @flyer, notice: 'Flyer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @flyer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flyers/1
  # DELETE /flyers/1.json
  def destroy
    @flyer = Flyer.find(params[:id])
    @flyer.destroy

    respond_to do |format|
      format.html { redirect_to flyers_url }
      format.json { head :no_content }
    end
  end
end

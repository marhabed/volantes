class FavoriteCompaniesController < ApplicationController
  # GET /favorite_companies
  # GET /favorite_companies.json
  def index
    @favorite_companies = FavoriteCompany.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @favorite_companies }
    end
  end

  # GET /favorite_companies/1
  # GET /favorite_companies/1.json
  def show
    @favorite_company = FavoriteCompany.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @favorite_company }
    end
  end

  # GET /favorite_companies/new
  # GET /favorite_companies/new.json
  def new
    @favorite_company = FavoriteCompany.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @favorite_company }
    end
  end

  # GET /favorite_companies/1/edit
  def edit
    @favorite_company = FavoriteCompany.find(params[:id])
  end

  # POST /favorite_companies
  # POST /favorite_companies.json
  def create
    @favorite_company = FavoriteCompany.new(params[:favorite_company])

    respond_to do |format|
      if @favorite_company.save
        format.html { redirect_to @favorite_company, notice: 'Favorite company was successfully created.' }
        format.json { render json: @favorite_company, status: :created, location: @favorite_company }
      else
        format.html { render action: "new" }
        format.json { render json: @favorite_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /favorite_companies/1
  # PUT /favorite_companies/1.json
  def update
    @favorite_company = FavoriteCompany.find(params[:id])

    respond_to do |format|
      if @favorite_company.update_attributes(params[:favorite_company])
        format.html { redirect_to @favorite_company, notice: 'Favorite company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @favorite_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_companies/1
  # DELETE /favorite_companies/1.json
  def destroy
    @favorite_company = FavoriteCompany.find(params[:id])
    @favorite_company.destroy

    respond_to do |format|
      format.html { redirect_to favorite_companies_url }
      format.json { head :no_content }
    end
  end
end

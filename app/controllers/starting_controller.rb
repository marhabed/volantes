class StartingController < ApplicationController
  # GET /flyers
  # GET /flyers.json
  def index

    respond_to do |format|
      format.html # index.html.erb
    end
  end

end

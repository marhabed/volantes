class StartingController < RootWithoutLoginController
  def index

    respond_to do |format|
      format.html
    end
  end

end

class ImageController < ApplicationController
  
   def serve
    path = "#{Rails.configuration.base_dir}/#{params[:filename]}.#{params[:extension]}"

    send_file( path,
      :disposition => 'inline',
      :type => 'image/jpeg',
      :x_sendfile => true )
  end
  
end
class DownloadController < ApplicationController
  def show
    file_name='download/'+params[:id]+'.apk'
    if File.exist?(file_name)
      send_file  file_name
    else 
      flash[:notice] = nil
      flash[:alert] = "File does not exist and can not be downloaded. "  
    end   
  end
end

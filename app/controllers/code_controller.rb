require "googleauth"

class CodeController < ApplicationController
  def code_params
    params.require(:code).permit(:name, :author, :code, :create_date)
  end

  def index
    # require 'addressable/uri'

    # redirect_uri = Addressable::URI.parse(request.url)
    
    # params = redirect_uri.query_values #=> {"param1"=>"one", "param2"=>"2", "param3"=>"something3"}
    # params.delete('code')
    # params.delete('scope')
    
    # redirect_uri = redirect_uri.to_s
    # puts redirect_uri
    
    credentials = Google::Auth::UserRefreshCredentials.new(
      client_id: "427322717824-tqrlltduihi9fims5ometcre2r74qi18.apps.googleusercontent.com",
      client_secret: "YCdK9dpCkoS93BEZMLEOy1Sh",
      scope: [
        "https://www.googleapis.com/auth/drive",
        "https://spreadsheets.google.com/feeds/",
      ],
      redirect_uri: "https://4774bc3536ab42a4b45a9bc5cf857782.vfs.cloud9.us-east-2.amazonaws.com/code")
    credentials.code = params[:code]
    credentials.fetch_access_token!
    session = GoogleDrive::Session.from_credentials(credentials)
    @codes = Code.new(session)
    @files = @codes.listFile()
  end

  def new
  end

  def create
    params.require(:code)
    permitted = params[:code].permit(:name, :author, :code, :create_date)
    @code = Code.create!(permitted)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to code_index_path
  end

  def edit
    @code = Code.find params[:id]
  end

  def update
     @code = Code.find params[:id]
     permitted = params[:code].permit(:name, :author, :code, :create_date)
     @code.update_attributes!(permitted)

     flash[:notice] = "#{@code.name} was successfully updated."
     redirect_to code_path(@code)
   end

  def show
    @files = @code.listFile()
  end

  def destroy
    @code = Code.find(params[:id])
    @code.destroy
    flash[:notice] = "Code '#{@code.name}' deleted."
    redirect_to code_index_path
  end

  def login
    #redirect_to code_index_path
    credentials = Google::Auth::UserRefreshCredentials.new(
      client_id: "427322717824-tqrlltduihi9fims5ometcre2r74qi18.apps.googleusercontent.com",
      client_secret: "YCdK9dpCkoS93BEZMLEOy1Sh",
      scope: [
        "https://www.googleapis.com/auth/drive",
        "https://spreadsheets.google.com/feeds/",
      ],
      # redirect_uri: request.url + "code",
      redirect_uri: "https://4774bc3536ab42a4b45a9bc5cf857782.vfs.cloud9.us-east-2.amazonaws.com/code",
      additional_parameters: { "access_type" => "offline" })
    auth_url = credentials.authorization_uri
    redirect_to auth_url.to_s
  end
  
  def intro
  end
end

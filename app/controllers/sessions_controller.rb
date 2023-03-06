class SessionsController < ApplicationController
  
  def index
    byebug
    session[:session_hello] ||= "World"
    cookies[:cookies_hello] ||= "World"
    cookies[:cookies_dope] ||= "weed"
    render json: { session: session, cookies: cookies.to_hash }
  end

end

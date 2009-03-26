class SessionsController < ApplicationController
  def create
    if using_open_id?
      open_id_authentication
    else
      failed_login "Sorry, login failed."
    end
  end

protected

  def open_id_authentication
    authenticate_with_open_id do |result, identity_url|
      if result.successful? && identity_url == "http://localhost:3333/user/mat_aki"
        session[:login] = :true
        redirect_to(root_url)
      else
        failed_login "Sorry, login failed."
      end
    end
  end

  def failed_login(message)
    flash[:error] = message
    redirect_to(root_url)
  end
end

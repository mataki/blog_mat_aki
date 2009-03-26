class SessionsController < ApplicationController
  def create
    if using_open_id?
      open_id_authentication
    else
      failed_login "Sorry, login failed."
    end
  end

  def destroy
    reset_session
    flash[:notice] = 'You are now logged out.'
    redirect_to(root_url)
  end

protected

  def open_id_authentication
    authenticate_with_open_id do |result, identity_url|
      if result.successful? && identity_url == configatron.identity_url
        reset_session
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

class EucalyptusController < ApplicationController
  before_filter :parse_facebook_cookies
  
  def index
    @cookies = cookies
    
    if @facebook_cookies['access_token'] != nil
      @access_token ||= @facebook_cookies['access_token']
    end
    
    respond_to do |format|
      format.html
    end
    
  end
  
  private
  def parse_facebook_cookies
    @signed_request = params[:signed_request]
    @oauth ||= Koala::Facebook::OAuth.new
    @oauth.parse_signed_request(@signed_request) if @signed_request != nil
    @facebook_cookies ||= @oauth.get_user_info_from_cookie(cookies)
  end
  
end
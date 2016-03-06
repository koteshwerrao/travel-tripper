class HomeController < ApplicationController
  def index
  	if current_user
  	 @page_design = current_user.page_design
  	else
  	  @page_design = ""
  	end
  end
end

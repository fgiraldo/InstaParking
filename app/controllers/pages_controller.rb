class PagesController < ApplicationController
  layout 'internal', except: [:index]
  
  def index
  end

  def log_in
  end

  def sign_up
  end

  def about_us
  end

  def contact_us
  end
end

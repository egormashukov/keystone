class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :load_categories

  def current_user_admin?
    current_user.try(:admin?)
  end
  helper_method :current_user_admin?

  def category_param
    params[:category].presence
  end
  helper_method :category_param


  private
  
  def load_categories
    @categories = Category.all
  end
end

class CategoriesController < ApplicationController
  inherit_resources
  before_action :set_products, only: [:index, :show]
  actions :all, except: [:edit]

  def index
    index! do |format|
      format.html { render :content }
    end
  end

  def show
    show! do |format|
      format.html { render :content }
    end
  end

  def create
    create! { categories_path }
  end

  private

  def permitted_params
    params.permit(category: [:name])
  end

  def set_products
    @products = load_products
  end

  def load_products
    begin
      resource.products
    rescue
      Product.all
    end
  end
end
  
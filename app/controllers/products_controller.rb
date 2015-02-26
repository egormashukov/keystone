class ProductsController < ApplicationController
  inherit_resources
  actions :all, except: [:edit, :index]

  def show
    load_reviews
    build_review
  end

  private

  def build_review
    @review = resource.reviews.build
  end

  def load_reviews
    @reviews = resource.reviews.to_a
  end

  def permitted_params
    params.permit(product: [:title, :description, :category_id])
  end
end
  
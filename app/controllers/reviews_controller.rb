class ReviewsController < ApplicationController
  inherit_resources
  before_filter :authenticate_user!, except: [:create]
  actions :all, except: [:index, :show]

  def create
    @review = Review.new(permitted_params[:review])
    @review.user = current_user
    create! { product_route }
  end

  def update
    update! { product_route }
  end

  def destroy
    destroy! { product_route }
  end

  private

  def permitted_params
    params.permit(review: [:msg, :product_id, :user])
  end

  def product_route
    product_path resource.product
  end
end

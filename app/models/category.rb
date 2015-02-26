class Category < ActiveRecord::Base
  validates :name, presence: true
  has_many :products

  def is_active_category?(params)
    id.to_s == params[:category] || (id.to_s == params[:id] && 'categories' == params[:controller])
  end
end

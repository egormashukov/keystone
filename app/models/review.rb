class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  def print_user
    user.try(:email)
  end
end

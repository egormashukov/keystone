class CreateReviews < ActiveRecord::Migration
  def up
    create_table :reviews do |t|
      t.text :msg
      t.belongs_to :product
      t.belongs_to :user

      t.timestamps
    end
  end

  def down
    drop_table :reviews
  end
end

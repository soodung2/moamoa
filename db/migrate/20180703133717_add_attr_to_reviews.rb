class AddAttrToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :cloth_id, :integer
  end
end

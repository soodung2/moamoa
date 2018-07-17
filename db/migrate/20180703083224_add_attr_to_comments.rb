class AddAttrToComments < ActiveRecord::Migration
  def change
    add_column :comments, :cloth_id, :integer
  end
end

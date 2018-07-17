class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :shop
      t.string :price
      t.string :size
      t.string :content
      t.string :date
      t.string :image

      t.timestamps null: false
    end
  end
end

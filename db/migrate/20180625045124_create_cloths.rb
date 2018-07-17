class CreateCloths < ActiveRecord::Migration
  def change
    create_table :cloths do |t|
      t.string :sex
      t.string :category
      t.string :name
      t.string :size
      t.string :price
      t.string :brand
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4

      t.timestamps null: false
    end
  end
end

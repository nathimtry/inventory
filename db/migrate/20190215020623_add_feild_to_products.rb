class AddFeildToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :rating, :string
    add_column :products, :image_name, :string , default: ""
  end
end

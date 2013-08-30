class AddImageToFlyer < ActiveRecord::Migration
  def change
    add_column :flyers, :image, :string
  end
end

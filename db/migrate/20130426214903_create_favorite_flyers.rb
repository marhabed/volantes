class CreateFavoriteFlyers < ActiveRecord::Migration
  def change
    create_table :favorite_flyers do |t|

      t.timestamps
    end
  end
end

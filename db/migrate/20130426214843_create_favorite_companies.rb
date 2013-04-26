class CreateFavoriteCompanies < ActiveRecord::Migration
  def change
    create_table :favorite_companies do |t|

      t.timestamps
    end
  end
end

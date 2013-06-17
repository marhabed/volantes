class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.integer :company_id
      t.string :latitude
      t.string :longitude
      t.integer :address_id

      t.timestamps
    end
  end
end

class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.integer :address_id
      t.integer :country_code
      t.integer :state_code
      t.string :phone
      t.string :description

      t.timestamps
    end
  end
end

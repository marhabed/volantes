class CreateFlyerUsers < ActiveRecord::Migration
  def change
    create_table :flyer_users do |t|
      t.integer :user_id
      t.integer :flyer_id

      t.timestamps
    end
  end
end

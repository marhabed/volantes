class RemoveAddressIdFromBranch < ActiveRecord::Migration
  def up
    remove_column :branches, :address_id
  end

  def down
    add_column :branches, :address_id, :integer
  end
end

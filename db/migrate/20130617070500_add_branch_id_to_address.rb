class AddBranchIdToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :branch_id, :integer
  end
end

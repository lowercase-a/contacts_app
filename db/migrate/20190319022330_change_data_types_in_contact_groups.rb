class ChangeDataTypesInContactGroups < ActiveRecord::Migration[5.2]
  def change
    change_column :contact_groups, :contact_id, "numeric USING CAST(contact_id AS numeric)"
    change_column :contact_groups, :contact_id, :integer
    change_column :contact_groups, :group_id, "numeric USING CAST(group_id AS numeric)"
    change_column :contact_groups, :group_id, :integer

  end
end

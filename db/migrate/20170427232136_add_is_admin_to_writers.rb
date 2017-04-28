class AddIsAdminToWriters < ActiveRecord::Migration[5.0]
  def change
    add_column :writers, :is_admin, :boolean, default: false
  end
end

class AddBioToWriters < ActiveRecord::Migration[5.0]
  def change
    add_column :writers, :bio, :text
  end
end

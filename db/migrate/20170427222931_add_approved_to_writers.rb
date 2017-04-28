class AddApprovedToWriters < ActiveRecord::Migration[5.0]
  def change
    add_column :writers, :approved, :boolean, default: false
    add_column :writers, :image_url, :string, default: "http://i.imgur.com/k55EBCZh.png"
  end
end

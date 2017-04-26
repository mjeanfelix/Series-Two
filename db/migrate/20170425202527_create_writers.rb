class CreateWriters < ActiveRecord::Migration[5.0]
  def change
    create_table :writers do |t|
      t.string :name
      t.string :email
      t.string :genre
      t.string :education
      t.string :storefront_link

      t.timestamps
    end
  end
end

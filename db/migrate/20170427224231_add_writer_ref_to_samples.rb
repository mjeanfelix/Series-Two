class AddWriterRefToSamples < ActiveRecord::Migration[5.0]
  def change
    add_reference :samples, :writer, foreign_key: true
  end
end

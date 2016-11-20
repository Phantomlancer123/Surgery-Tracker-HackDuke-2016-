class CreateStatusUpdates < ActiveRecord::Migration[5.0]
  def change
    create_table :status_updates do |t|
      t.integer :progress
      t.string :message
      t.integer :surgery_id

      t.timestamps
    end
  end
end

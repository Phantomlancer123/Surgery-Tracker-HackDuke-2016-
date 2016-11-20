class CreateSurgeries < ActiveRecord::Migration[5.0]
  def change
    create_table :surgeries do |t|
      t.datetime :scheduled_time
      t.string :patient
      t.integer :tracking_id
      t.string :description
      t.integer :est_length

      t.timestamps
    end
  end
end

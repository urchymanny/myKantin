class CreateLgas < ActiveRecord::Migration[5.0]
  def change
    create_table :lgas do |t|
      t.string :name
      t.integer :state_id

      t.timestamps
    end
  end
end

class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.boolean :is_paid
      t.decimal :money_per_hour
      t.integer :time_worked
      t.date :deadline

      t.timestamps
    end
  end
end

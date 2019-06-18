class CreateTimeEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :time_entries do |t|
      t.references :trackable, polymorphic: true
      t.bigint :elapsed_time, default: 0
      t.datetime :starting_time, null: false 
      t.datetime :ending_time, null: true
      t.timestamps
    end
  end
end

class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.text :description, null: false
      t.datetime :start_at, null: false
      t.datetime :expires_at, null: false
      t.boolean :finished, default: false
      t.integer :session_duration, null: true
      t.timestamps
    end
  end
end

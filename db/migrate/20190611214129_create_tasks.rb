class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.boolean :finished, default: false
      t.integer :priority, default: 0
      t.string :color, null: false
      t.date :expires_at, null: true
      t.references :category, index: true
      t.timestamps
    end
  end
end

class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name, null: false
      t.integer :age, default: 0
      t.integer :occupation, default: 0
      t.string :user, null: false
      t.string :password, null: false
      t.time :start_at, null: false
      t.time :finish_at, null: false
      t.integer :points, default: 0
      t.timestamps
    end
  end
end

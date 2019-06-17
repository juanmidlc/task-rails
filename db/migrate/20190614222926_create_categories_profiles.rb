class CreateCategoriesProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_profiles, :id => false do |t|
      t.references :category, index: true
      t.references :profile, index: true
    end
  end
end

class AddAssociationToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :profiles, :user, index: true
  end
end

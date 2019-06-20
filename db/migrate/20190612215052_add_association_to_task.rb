class AddAssociationToTask < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :session, index: true
  end
end

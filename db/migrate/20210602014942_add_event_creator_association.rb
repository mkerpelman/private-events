class AddEventCreatorAssociation < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :creator, reference: :users, index: true
    add_foreign_key :events, :users, column: :creator_id
  end
end

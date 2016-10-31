class CreateMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :maps do |t|
      t.timestamps
    end

    create_table :events do |t|
      t.belongs_to :map, index: true
      t.primary_key :id
      t.integer :expectedNum
      t.string :name
      t.float :ticketPrice
      t.text :description
      t.datetime :dateTime
      t.integer :affiliation, array: true
      t.integer :eventType, array: true
      t.string :userIds, array: true
      t.boolean :isLit
      t.integer :numAddedToCal
      t.integer :numCheckIn
      t.timestamps
    end 
  end
end
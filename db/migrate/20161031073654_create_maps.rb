class CreateMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :maps do |t|
      t.timestamps
    end

    create_table :events do |t|
      t.belongs_to :map, index: true
      t.belongs_to :sixty_day_planner, index: true
      t.integer :userId
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

    add_index :events, :affiliation, using: 'gin'
    add_index :events, :eventType, using: 'gin'
    add_index :events, :userIds, using: 'gin'

    create_table :locations do |t|
      t.belongs_to :event, index: true
      t.string :building
      t.string :room
      t.float :latitude
      t.float :longitude
      t.timestamps
    end

    create_table :offers do |t|
      t.belongs_to :event, index: true
      t.string :name
      t.integer :numUsed
      t.integer :maxUse
      t.timestamps
    end

  end
end

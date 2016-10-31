class CreateSixtyDayPlanners < ActiveRecord::Migration[5.0]
  def change
    create_table :sixty_day_planners do |t|
      t.date :startDate
      t.date :endDate
      t.integer :eventsById, array: true
      t.integer :freeTimes, array: true
      t.timestamps
    end
    add_index :sixtydayplanners, :eventsById, using: 'gin'
    add_index :sixtydayplanners, :eventsById, using: 'gin'

    create_table :events do |t|
      t.belongs_to :sixty_day_planner, index: true
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

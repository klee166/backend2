class CreateDayPlanners < ActiveRecord::Migration[5.0]
  def change
    create_table :day_planners do |t|
      t.date :date
      t.timestamps
    end
  end
end

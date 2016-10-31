class CreateFilters < ActiveRecord::Migration[5.0]
  def change 
    create_table :filters do |t|
      t.boolean :isOn
      t.integer :preferences, array: true
      t.timestamps
    end
    add_index :filters, :preferences, using: 'gin'
  end
end

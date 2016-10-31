class CreateCatalogues < ActiveRecord::Migration[5.0]
  def change
    create_table :catalogues do |t|
      t.integer :eventsById, array: true
      t.timestamps
    end
    add_index :catalogues, :eventsById, using: 'gin'
  end
end

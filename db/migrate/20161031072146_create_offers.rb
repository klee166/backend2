class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.integer :numUsed
      t.integer :maxUse

      t.timestamps
    end
  end
end

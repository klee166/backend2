class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password
      t.string :gmail
      t.string :phoneNum
      t.string :confirmationCode
      t.boolean :isConfirmed
      t.integer :affiliation, array: true
      t.integer :userEventsById, array: true
      t.timestamps
    end

    create_table :filters do |t|
    t.belongs_to :user, index: true
    t.boolean :isOn
    t.integer :preferences, array: true
    t.timestamps
    end

    add_index :users, :affiliation, using: 'gin'
    add_index :users, :affiliation, using: 'gin'
  end
end

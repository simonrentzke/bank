class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :balance, precision: 10, scale: 2
      t.string :account_number
      t.timestamps
    end
    add_index :accounts, :account_number, unique: true
  end
end

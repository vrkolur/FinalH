class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.references :sender, null: false, foreign_key: { to_table: :users }
      t.references :reciever, null: false, foreign_key: { to_table: :users }
      t.string :msg
      t.boolean :status, default: false
      t.timestamps
    end
  end
end

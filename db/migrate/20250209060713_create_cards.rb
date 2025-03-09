class CreateCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.string :customer_token, null: false
      t.references :user,       foreign_key: true

      t.timestamps
    end
  end
end

class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :last_name
      t.integer :zipcode

      t.timestamps
    end
  end
end

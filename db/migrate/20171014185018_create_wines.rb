class CreateWines < ActiveRecord::Migration[5.1]
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :temp
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end

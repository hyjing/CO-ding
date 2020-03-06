class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.string :name
      t.string :author
      t.text :code
      t.datetime :create_date
      t.integer :parent

      t.timestamps
    end
  end
end

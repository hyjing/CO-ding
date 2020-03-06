class CreateFolds < ActiveRecord::Migration
  def change
    create_table :folds do |t|
      t.string :fold_name
      t.string :fold_author
      t.datetime :fold_create_date

      t.timestamps
    end
  end
end

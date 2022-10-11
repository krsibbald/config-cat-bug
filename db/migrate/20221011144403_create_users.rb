class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :config_cat_test_flag
      t.text :notes

      t.timestamps
    end
  end
end

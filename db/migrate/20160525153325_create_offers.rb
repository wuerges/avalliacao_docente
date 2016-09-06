class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :secure_create_id, :limit => 8
      t.integer :secure_list_id, :limit => 8
      t.references :professor, foreign_key: true, null: false
      t.references :course, foreign_key: true, null: false

      t.integer :semester, null: false
      t.integer :shift, null: false
      t.boolean :active, null: false

      t.timestamps null: false
    end
    add_index :offers, :secure_create_id, unique: true
    add_index :offers, :secure_list_id, unique: true
  end
end

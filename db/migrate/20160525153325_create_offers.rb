class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :secure_id, :limit => 8
      t.references :professor, foreign_key: true, null: false
      t.references :course, foreign_key: true, null: false

      t.integer :semester, null: false
      t.integer :shift, null: false
      t.boolean :active, null: false

      t.timestamps null: false
    end
    add_index :offers, :secure_id, unique: true
  end
end

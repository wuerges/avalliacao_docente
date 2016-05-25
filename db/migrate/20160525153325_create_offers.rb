class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :professor, foreign_key: true, null: false
      t.references :course, foreign_key: true, null: false

      t.integer :semester, null: false
      t.integer :shift, null: false
      t.boolean :active, null: false

      t.timestamps null: false
    end
  end
end

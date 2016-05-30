class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :secure_id, :limit => 8
      t.references :offer, index: true, foreign_key: true, null: false
      t.integer :a01, null: false
      t.integer :a02, null: false
      t.integer :a03, null: false
      t.integer :a04, null: false
      t.integer :a05, null: false
      t.integer :a06, null: false
      t.integer :a07, null: false
      t.integer :a08, null: false
      t.integer :a09, null: false
      t.integer :a10, null: false
      t.integer :a11, null: false
      t.integer :a12, null: false
      t.integer :a13, null: false
      t.integer :a14, null: false
      t.text :comment

      t.timestamps null: false
    end
    add_index :answers, :secure_id, unique: true
  end
end

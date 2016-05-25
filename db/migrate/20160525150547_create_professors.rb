class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.text :name, null: false

      t.timestamps null: false
    end
    add_index :professors, :name, unique: true
  end
end

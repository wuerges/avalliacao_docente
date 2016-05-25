class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :code
      t.text :name, null: false

      t.timestamps null: false
    end
    add_index :courses, :code, unique: true
    add_index :courses, :name, unique: true
  end
end

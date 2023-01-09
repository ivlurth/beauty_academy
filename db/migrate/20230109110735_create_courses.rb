class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description_short
      t.text :description_long
      t.integer :price
      t.boolean :is_shown

      t.timestamps
    end
  end
end

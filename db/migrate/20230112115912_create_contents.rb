class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|
      t.integer :course_id
      t.text :body

      t.timestamps
    end
  end
end

class CreatePapers < ActiveRecord::Migration[5.1]
  def change
    create_table :papers do |t|
      t.string :name
      t.string :student_id
      t.integer :score

      t.timestamps
    end
  end
end

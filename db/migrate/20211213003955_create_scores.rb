class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.integer :student_id
      t.integer :subject_id
      t.integer :score

      t.timestamps
    end
  end
end

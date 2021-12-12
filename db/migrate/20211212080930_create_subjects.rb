class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :credits
      t.integer :tuition

      t.timestamps
    end
  end
end

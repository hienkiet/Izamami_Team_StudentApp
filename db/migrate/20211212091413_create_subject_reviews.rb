class CreateSubjectReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :subject_reviews do |t|
      t.string :name
      t.text :review

      t.timestamps
    end
  end
end

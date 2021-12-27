class CreateMovieReviewers < ActiveRecord::Migration[6.1]
  def change
    create_table :movies_reviewers do |t|
      t.references :movie
      t.references :reviewer
      t.float :star
      t.string :comment
      t.timestamps
    end
  end
end

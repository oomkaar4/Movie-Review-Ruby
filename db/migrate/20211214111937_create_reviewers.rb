class CreateReviewers < ActiveRecord::Migration[6.1]
  def change
    create_table :reviewers do |t|
      t.string :rev_name
      t.timestamps
    end
  end
end

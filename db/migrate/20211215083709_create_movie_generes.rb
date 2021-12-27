class CreateMovieGeneres < ActiveRecord::Migration[6.1]
  def change
    create_table :geners_movies do |t|
      t.references :movie
      t.references :gener 
      t.timestamps
    end
  end
end

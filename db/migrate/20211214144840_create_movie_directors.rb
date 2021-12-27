class CreateMovieDirectors < ActiveRecord::Migration[6.1]
  def change
    create_table :directors_movies do |t|
        t.references :director
        t.references :movie
        t.timestamps
    end
  end
end

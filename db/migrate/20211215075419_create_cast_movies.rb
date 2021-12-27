class CreateCastMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :cast_movies do |t|
      
      t.timestamps
    end
  end
end

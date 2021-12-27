class CreateActorMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :actor_movies do |t|
      t.references :actor
      t.references :movie
      t.string :role
      t.timestamps
    end
  end
end

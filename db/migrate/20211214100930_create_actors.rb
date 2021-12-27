class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :actor_f_name
      t.string :actor_l_name
      t.string :actor_gender
      t.timestamps
    end
  end
end

class CreateDirectors < ActiveRecord::Migration[6.1]
  def change
    create_table :directors do |t|
      t.string :dir_f_name
      t.string :dir_l_name
      t.timestamps
    end
  end
end

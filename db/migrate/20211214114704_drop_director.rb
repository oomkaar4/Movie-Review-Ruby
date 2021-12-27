class DropDirector < ActiveRecord::Migration[6.1]
  def change
    #drop_table :Director
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

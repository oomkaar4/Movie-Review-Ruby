class CreateGeners < ActiveRecord::Migration[6.1]
  def change
    create_table :geners do |t|
      t.string :gener_title
      t.timestamps
    end
  end
end

class CreateHeralds < ActiveRecord::Migration
  def change
    create_table :heralds do |t|
      t.text :message

      t.timestamps
    end
  end
end

class CreateUsers3s < ActiveRecord::Migration[7.0]
  def change
    create_table :users3s do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end

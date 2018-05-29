class CreateVista < ActiveRecord::Migration[5.2]
  def change
    create_table :vista do |t|
      t.string :tittle

      t.timestamps
    end
  end
end

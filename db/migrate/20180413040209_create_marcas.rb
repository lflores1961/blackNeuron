class CreateMarcas < ActiveRecord::Migration[5.1]
  def change
    create_table :marcas do |t|
      t.string :name
      t.text :description
      t.datetime :start

      t.timestamps
    end
  end
end

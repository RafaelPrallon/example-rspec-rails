class CreateEventos < ActiveRecord::Migration[5.1]
  def change
    create_table :eventos do |t|
      t.string :nome
      t.string :local
      t.string :organizador

      t.timestamps
    end
  end
end

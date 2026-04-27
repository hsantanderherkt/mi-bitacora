class CreateNota < ActiveRecord::Migration[8.1]
  def change
    create_table :nota do |t|
      t.string :titulo
      t.text :contenido

      t.timestamps
    end
  end
end

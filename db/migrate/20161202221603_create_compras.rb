class CreateCompras < ActiveRecord::Migration
  def change
    create_table :compras do |t|
      t.integer :id_cliente
      t.integer :cantidad
      t.string :tarjeta
      t.string :tipo

      t.timestamps null: false
    end
  end
end

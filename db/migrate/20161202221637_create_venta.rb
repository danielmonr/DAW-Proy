class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.integer :id_cliente
      t.integer :cantidad
      t.string :clabe

      t.timestamps null: false
    end
  end
end

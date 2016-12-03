class CreateCuenta < ActiveRecord::Migration
  def change
    create_table :cuenta do |t|
      t.string :descripcion
      t.integer :saldo
      t.integer :id_usuario

      t.timestamps null: false
    end
  end
end

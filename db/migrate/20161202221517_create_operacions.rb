class CreateOperacions < ActiveRecord::Migration
  def change
    create_table :operacions do |t|
      t.integer :id_cuentasalida
      t.integer :id_cuentarecibe
      t.integer :cantidad
      t.date :fecha

      t.timestamps null: false
    end
  end
end

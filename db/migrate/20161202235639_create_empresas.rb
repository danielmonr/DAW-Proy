class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :password

      t.timestamps null: false
    end
  end
end

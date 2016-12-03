class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :email
      t.string :apellido
      t.string :password

      t.timestamps null: false
    end
  end
end

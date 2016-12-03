# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161202235639) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "apellido"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compras", force: :cascade do |t|
    t.integer  "id_cliente"
    t.integer  "cantidad"
    t.string   "tarjeta"
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuenta", force: :cascade do |t|
    t.string   "descripcion"
    t.integer  "saldo"
    t.integer  "id_usuario"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "operacions", force: :cascade do |t|
    t.integer  "id_cuentasalida"
    t.integer  "id_cuentarecibe"
    t.integer  "cantidad"
    t.date     "fecha"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "venta", force: :cascade do |t|
    t.integer  "id_cliente"
    t.integer  "cantidad"
    t.string   "clabe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

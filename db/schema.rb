# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_14_174234) do

  create_table "alergenos", charset: "utf8", force: :cascade do |t|
    t.string "screenSize"
    t.string "imgSmall"
    t.string "imgMedium"
    t.string "imgLarge"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bizcochos", charset: "utf8", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "buttercreams", charset: "utf8", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "eventos", charset: "utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "img1"
    t.string "img2"
    t.string "img3"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "footers", charset: "utf8", force: :cascade do |t|
    t.string "nombreizda"
    t.string "enlaceizda"
    t.string "nombremedio"
    t.string "nombredcha"
    t.string "enlacedcha"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "formulariocontactos", charset: "utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.string "telefono"
    t.string "comentario"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "galleta", charset: "utf8", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mesadulces", charset: "utf8", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pedidos", charset: "utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.string "telefono"
    t.string "domicilio"
    t.string "CP"
    t.string "fechaEntrega"
    t.text "comentario"
    t.text "tuPedido"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "popcakes", charset: "utf8", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "preguntasfrecuentes", charset: "utf8", force: :cascade do |t|
    t.string "titulo"
    t.string "descripcion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8", force: :cascade do |t|
    t.text "name"
    t.text "email", null: false
    t.text "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :hash
  end

end

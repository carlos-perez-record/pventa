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

ActiveRecord::Schema.define(version: 2020_04_19_214255) do

  create_table "actives", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "serial"
    t.integer "placa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "devices_id"
    t.index ["devices_id"], name: "index_actives_on_devices_id"
  end

  create_table "activities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "reform_id"
    t.index ["reform_id"], name: "index_activities_on_reform_id"
  end

  create_table "centers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "zone_id"
    t.index ["zone_id"], name: "index_centers_on_zone_id"
  end

  create_table "devices", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modifications", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "points", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "codigo"
    t.string "nombre"
    t.string "direccion"
    t.string "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.bigint "technology_id"
    t.bigint "center_id"
    t.string "serial"
    t.string "celda"
    t.index ["center_id"], name: "index_points_on_center_id"
    t.index ["technology_id"], name: "index_points_on_technology_id"
  end

  create_table "reforms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "fecha"
    t.string "proyecto"
    t.string "obra"
    t.bigint "modification_id"
    t.bigint "point_id"
    t.index ["modification_id"], name: "index_reforms_on_modification_id"
    t.index ["point_id"], name: "index_reforms_on_point_id"
  end

  create_table "tasks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "unity_id"
    t.decimal "valor_unitario", precision: 10
    t.decimal "cantidad", precision: 10
    t.bigint "activity_id"
    t.index ["activity_id"], name: "index_tasks_on_activity_id"
    t.index ["unity_id"], name: "index_tasks_on_unity_id"
  end

  create_table "technologies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "unidad"
    t.string "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email"
    t.string "nombre"
    t.integer "cedula"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zones", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "actives", "devices", column: "devices_id"
  add_foreign_key "activities", "reforms"
  add_foreign_key "centers", "zones"
  add_foreign_key "points", "centers"
  add_foreign_key "points", "technologies"
  add_foreign_key "reforms", "modifications"
  add_foreign_key "reforms", "points"
  add_foreign_key "tasks", "activities"
  add_foreign_key "tasks", "unities"
end

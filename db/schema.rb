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

ActiveRecord::Schema.define(version: 20140115074112) do

  create_table "goals", force: true do |t|
    t.string   "name"
    t.integer  "value"
    t.string   "unit"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "achieved"
  end

  create_table "move_muscles", force: true do |t|
    t.integer  "muscle_id"
    t.integer  "move_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moves", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "muscles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "musclegroup_id"
    t.string   "musclegroup"
  end

  create_table "results", force: true do |t|
    t.integer  "move_id"
    t.integer  "user_id"
    t.integer  "repetitions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "weight"
  end

  create_table "user_workout_moves", force: true do |t|
    t.integer  "userworkout_id"
    t.integer  "move_id"
    t.integer  "repetitions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_workouts", force: true do |t|
    t.string   "title"
    t.string   "type"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "height"
    t.string   "password_digest"
  end

  create_table "workout_moves", force: true do |t|
    t.integer  "workout_id"
    t.integer  "move_id"
    t.integer  "repetitions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workouts", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

end

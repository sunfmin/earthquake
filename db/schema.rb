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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120113102426) do

  create_table "earthquake_regions", :force => true do |t|
    t.integer  "earthquake_id"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "earthquakes", :force => true do |t|
    t.string   "src"
    t.integer  "eqid"
    t.string   "version"
    t.datetime "happend_at"
    t.float    "lat"
    t.float    "lon"
    t.float    "mag"
    t.float    "depth"
    t.integer  "nst"
    t.string   "region"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qor_addon_settings", :force => true do |t|
    t.string   "addon_name"
    t.string   "setting_key"
    t.boolean  "enabled"
    t.text     "setting_value"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qor_job_workers", :force => true do |t|
    t.string   "job_name"
    t.string   "status"
    t.integer  "creator_id"
    t.integer  "updater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qor_media_library_assets", :force => true do |t|
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.string   "data_file_size"
    t.string   "data_updated_at"
    t.string   "data_coordinates",  :limit => 1024
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.string   "file_file_size"
    t.string   "file_updated_at"
    t.string   "file_coordinates",  :limit => 1024
    t.integer  "entry_id"
    t.string   "entry_type"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qor_resources_engine_screen_options", :force => true do |t|
    t.string  "mount_at"
    t.string  "resource_name"
    t.string  "screen_option_key"
    t.integer "list_count",        :default => 25
    t.string  "list_column_names"
    t.string  "list_order_by"
  end

  create_table "qor_widget_sets", :force => true do |t|
    t.string   "name"
    t.text     "setting_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qor_widget_template_bundles", :force => true do |t|
    t.string   "widget_name"
    t.string   "name"
    t.string   "mount_at"
    t.string   "note"
    t.text     "embed_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qor_widget_view_settings", :force => true do |t|
    t.integer  "template_bundle_id"
    t.string   "widget_name"
    t.string   "setting_key"
    t.string   "widget_group"
    t.boolean  "hide",               :default => false
    t.text     "setting_value"
    t.integer  "setting_obj_id"
    t.string   "setting_obj_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "qor_widget_view_settings", ["setting_obj_id"], :name => "index_qor_widget_view_settings_on_setting_obj_id", :unique => true
  add_index "qor_widget_view_settings", ["widget_name", "widget_group", "setting_key"], :name => "index_on_widget_name_and_widget_group_and_setting_key", :unique => true

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "translations", :force => true do |t|
    t.string   "locale",         :limit => 30,                    :null => false
    t.string   "key"
    t.text     "value"
    t.text     "interpolations"
    t.boolean  "is_proc",                      :default => false
    t.boolean  "in_yaml",                      :default => false
    t.boolean  "sync_with_yaml",               :default => false
    t.boolean  "optional",                     :default => false
    t.text     "previous_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "translations", ["locale", "key"], :name => "index_on_locale_and_key"

end

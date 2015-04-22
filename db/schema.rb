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

ActiveRecord::Schema.define(version: 20141218041142) do

  create_table "account_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.integer  "primary_contact"
    t.integer  "owner"
    t.integer  "parent_account_id"
    t.integer  "account_no"
    t.integer  "rating_id"
    t.integer  "annual_income"
    t.integer  "sic_code"
    t.integer  "company_id"
    t.integer  "account_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["account_type_id"], name: "index_accounts_on_account_type_id"
  add_index "accounts", ["company_id"], name: "index_accounts_on_company_id"
  add_index "accounts", ["owner"], name: "index_accounts_on_owner"
  add_index "accounts", ["parent_account_id"], name: "index_accounts_on_parent_account_id"
  add_index "accounts", ["primary_contact"], name: "index_accounts_on_primary_contact"
  add_index "accounts", ["rating_id"], name: "index_accounts_on_rating_id"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "addresses", force: true do |t|
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.string   "country"
    t.string   "billing_street"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_zip_code"
    t.string   "billing_country"
    t.integer  "address_id"
    t.integer  "address_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["address_id"], name: "index_addresses_on_address_id"
  add_index "addresses", ["address_type"], name: "index_addresses_on_address_type"

  create_table "appointment_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointment_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "appointments", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.string   "location"
    t.integer  "regarding"
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.integer  "appointment_type_id"
    t.integer  "appointment_status_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "appointments", ["appointment_status_id"], name: "index_appointments_on_appointment_status_id"
  add_index "appointments", ["appointment_type_id"], name: "index_appointments_on_appointment_type_id"
  add_index "appointments", ["company_id"], name: "index_appointments_on_company_id"
  add_index "appointments", ["owner"], name: "index_appointments_on_owner"
  add_index "appointments", ["regarding"], name: "index_appointments_on_regarding"

  create_table "call_purposes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "call_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "call_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaign_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaign_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "campaigns", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "campaign_type_id"
    t.integer  "campaign_status_id"
    t.integer  "expected_revenue"
    t.integer  "budget_cost"
    t.integer  "actual_cost"
    t.integer  "expected_response"
    t.integer  "number_sent"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "campaigns", ["campaign_status_id"], name: "index_campaigns_on_campaign_status_id"
  add_index "campaigns", ["campaign_type_id"], name: "index_campaigns_on_campaign_type_id"
  add_index "campaigns", ["company_id"], name: "index_campaigns_on_company_id"
  add_index "campaigns", ["owner"], name: "index_campaigns_on_owner"

  create_table "case_origins", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "case_reasons", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "case_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "case_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cases", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "case_status_id"
    t.integer  "contact_id"
    t.integer  "product_id"
    t.integer  "priority_id"
    t.integer  "case_type_id"
    t.integer  "case_origin_id"
    t.integer  "case_reason_id"
    t.integer  "account_id"
    t.string   "reported_by"
    t.text     "comments"
    t.integer  "phone"
    t.string   "email"
    t.string   "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cases", ["account_id"], name: "index_cases_on_account_id"
  add_index "cases", ["case_origin_id"], name: "index_cases_on_case_origin_id"
  add_index "cases", ["case_reason_id"], name: "index_cases_on_case_reason_id"
  add_index "cases", ["case_status_id"], name: "index_cases_on_case_status_id"
  add_index "cases", ["case_type_id"], name: "index_cases_on_case_type_id"
  add_index "cases", ["company_id"], name: "index_cases_on_company_id"
  add_index "cases", ["contact_id"], name: "index_cases_on_contact_id"
  add_index "cases", ["owner"], name: "index_cases_on_owner"
  add_index "cases", ["priority_id"], name: "index_cases_on_priority_id"
  add_index "cases", ["product_id"], name: "index_cases_on_product_id"

  create_table "companies", force: true do |t|
    t.string   "name"
    t.decimal  "phone"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "company_name"
    t.integer  "owner"
    t.integer  "lead_source_id"
    t.integer  "account_id"
    t.integer  "vendor_id"
    t.string   "department"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["account_id"], name: "index_contacts_on_account_id"
  add_index "contacts", ["company_id"], name: "index_contacts_on_company_id"
  add_index "contacts", ["lead_source_id"], name: "index_contacts_on_lead_source_id"
  add_index "contacts", ["owner"], name: "index_contacts_on_owner"
  add_index "contacts", ["vendor_id"], name: "index_contacts_on_vendor_id"

  create_table "descriptions", force: true do |t|
    t.text     "context"
    t.integer  "descripable_id"
    t.string   "descripable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "descriptions", ["descripable_id"], name: "index_descriptions_on_descripable_id"
  add_index "descriptions", ["descripable_type"], name: "index_descriptions_on_descripable_type"

  create_table "event_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.integer  "priority_id"
    t.datetime "start_date_time"
    t.datetime "end_date_time"
    t.string   "location"
    t.integer  "owner"
    t.integer  "event_status_id"
    t.integer  "related_to"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["company_id"], name: "index_events_on_company_id"
  add_index "events", ["event_status_id"], name: "index_events_on_event_status_id"
  add_index "events", ["priority_id"], name: "index_events_on_priority_id"
  add_index "events", ["related_to"], name: "index_events_on_related_to"

  create_table "generals", force: true do |t|
    t.string   "primary_email"
    t.string   "secondary_email"
    t.integer  "mobile"
    t.integer  "telephone"
    t.integer  "fax"
    t.string   "website"
    t.string   "title"
    t.string   "skype"
    t.string   "location"
    t.string   "twitter"
    t.string   "linkedin"
    t.integer  "general_info_id"
    t.integer  "general_info_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gl_accounts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "industries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "sales_order_id"
    t.integer  "purchase_order_id"
    t.integer  "excise_duty"
    t.date     "invoice_date"
    t.date     "due_date"
    t.integer  "order_status_id"
    t.integer  "sales_com"
    t.integer  "account_id"
    t.integer  "product_id"
    t.integer  "contact_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invoices", ["account_id"], name: "index_invoices_on_account_id"
  add_index "invoices", ["company_id"], name: "index_invoices_on_company_id"
  add_index "invoices", ["contact_id"], name: "index_invoices_on_contact_id"
  add_index "invoices", ["order_status_id"], name: "index_invoices_on_order_status_id"
  add_index "invoices", ["owner"], name: "index_invoices_on_owner"
  add_index "invoices", ["product_id"], name: "index_invoices_on_product_id"
  add_index "invoices", ["purchase_order_id"], name: "index_invoices_on_purchase_order_id"
  add_index "invoices", ["sales_order_id"], name: "index_invoices_on_sales_order_id"

  create_table "lead_sources", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lead_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leads", force: true do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "company_name"
    t.integer  "owner"
    t.integer  "lead_status_id"
    t.integer  "lead_source_id"
    t.integer  "industry_id"
    t.string   "emp_range"
    t.integer  "rating_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "leads", ["company_id"], name: "index_leads_on_company_id"
  add_index "leads", ["industry_id"], name: "index_leads_on_industry_id"
  add_index "leads", ["lead_source_id"], name: "index_leads_on_lead_source_id"
  add_index "leads", ["lead_status_id"], name: "index_leads_on_lead_status_id"
  add_index "leads", ["rating_id"], name: "index_leads_on_rating_id"

  create_table "order_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ownerships", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_calls", force: true do |t|
    t.string   "name"
    t.integer  "call_form"
    t.integer  "call_to"
    t.integer  "related_to"
    t.integer  "owner"
    t.integer  "call_status_id"
    t.integer  "call_purpose_id"
    t.integer  "call_type_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "phone_calls", ["call_form"], name: "index_phone_calls_on_call_form"
  add_index "phone_calls", ["call_purpose_id"], name: "index_phone_calls_on_call_purpose_id"
  add_index "phone_calls", ["call_status_id"], name: "index_phone_calls_on_call_status_id"
  add_index "phone_calls", ["call_to"], name: "index_phone_calls_on_call_to"
  add_index "phone_calls", ["call_type_id"], name: "index_phone_calls_on_call_type_id"
  add_index "phone_calls", ["company_id"], name: "index_phone_calls_on_company_id"
  add_index "phone_calls", ["owner"], name: "index_phone_calls_on_owner"
  add_index "phone_calls", ["related_to"], name: "index_phone_calls_on_related_to"

  create_table "potential_stages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "potential_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "potentials", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "amount"
    t.integer  "contact_id"
    t.date     "closing_date"
    t.integer  "account_id"
    t.integer  "potential_stage_id"
    t.integer  "potential_type_id"
    t.integer  "probability"
    t.string   "next_step"
    t.integer  "expected_revenue"
    t.integer  "lead_source_id"
    t.integer  "campaign_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "potentials", ["account_id"], name: "index_potentials_on_account_id"
  add_index "potentials", ["campaign_id"], name: "index_potentials_on_campaign_id"
  add_index "potentials", ["company_id"], name: "index_potentials_on_company_id"
  add_index "potentials", ["contact_id"], name: "index_potentials_on_contact_id"
  add_index "potentials", ["lead_source_id"], name: "index_potentials_on_lead_source_id"
  add_index "potentials", ["next_step"], name: "index_potentials_on_next_step"
  add_index "potentials", ["owner"], name: "index_potentials_on_owner"
  add_index "potentials", ["potential_stage_id"], name: "index_potentials_on_potential_stage_id"
  add_index "potentials", ["potential_type_id"], name: "index_potentials_on_potential_type_id"

  create_table "price_books", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "pricing_status_id"
    t.integer  "pricing_model_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "price_books", ["company_id"], name: "index_price_books_on_company_id"
  add_index "price_books", ["owner"], name: "index_price_books_on_owner"
  add_index "price_books", ["pricing_model_id"], name: "index_price_books_on_pricing_model_id"
  add_index "price_books", ["pricing_status_id"], name: "index_price_books_on_pricing_status_id"

  create_table "pricing_models", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pricing_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "priorities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "code"
    t.integer  "product_status_id"
    t.integer  "vendor_id"
    t.integer  "product_category_id"
    t.integer  "unit_price"
    t.integer  "com_rate"
    t.integer  "tax_id"
    t.integer  "usage_unit_id"
    t.integer  "qty_ordered"
    t.integer  "qty_stock"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["company_id"], name: "index_products_on_company_id"
  add_index "products", ["owner"], name: "index_products_on_owner"
  add_index "products", ["product_category_id"], name: "index_products_on_product_category_id"
  add_index "products", ["product_status_id"], name: "index_products_on_product_status_id"
  add_index "products", ["tax_id"], name: "index_products_on_tax_id"
  add_index "products", ["usage_unit_id"], name: "index_products_on_usage_unit_id"
  add_index "products", ["vendor_id"], name: "index_products_on_vendor_id"

  create_table "purchase_orders", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "po_no"
    t.integer  "vendor_id"
    t.integer  "requistion_no"
    t.integer  "tracking_no"
    t.integer  "contact_id"
    t.date     "po_date"
    t.date     "due_date"
    t.integer  "excise_duty"
    t.integer  "sales_com"
    t.integer  "order_status_id"
    t.integer  "product_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchase_orders", ["company_id"], name: "index_purchase_orders_on_company_id"
  add_index "purchase_orders", ["contact_id"], name: "index_purchase_orders_on_contact_id"
  add_index "purchase_orders", ["order_status_id"], name: "index_purchase_orders_on_order_status_id"
  add_index "purchase_orders", ["owner"], name: "index_purchase_orders_on_owner"
  add_index "purchase_orders", ["product_id"], name: "index_purchase_orders_on_product_id"
  add_index "purchase_orders", ["vendor_id"], name: "index_purchase_orders_on_vendor_id"

  create_table "quote_stages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "potential_id"
    t.integer  "quote_stage_id"
    t.date     "valid_till"
    t.integer  "contact_id"
    t.integer  "account_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quotes", ["account_id"], name: "index_quotes_on_account_id"
  add_index "quotes", ["company_id"], name: "index_quotes_on_company_id"
  add_index "quotes", ["contact_id"], name: "index_quotes_on_contact_id"
  add_index "quotes", ["owner"], name: "index_quotes_on_owner"
  add_index "quotes", ["potential_id"], name: "index_quotes_on_potential_id"
  add_index "quotes", ["quote_stage_id"], name: "index_quotes_on_quote_stage_id"

  create_table "ratings", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales_orders", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "potential_id"
    t.integer  "purchase_order_id"
    t.integer  "customer_no"
    t.date     "due_date"
    t.integer  "quote_id"
    t.integer  "contact_id"
    t.integer  "pending"
    t.integer  "exices_duty"
    t.integer  "order_status_id"
    t.integer  "sales_com"
    t.integer  "account_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales_orders", ["account_id"], name: "index_sales_orders_on_account_id"
  add_index "sales_orders", ["company_id"], name: "index_sales_orders_on_company_id"
  add_index "sales_orders", ["contact_id"], name: "index_sales_orders_on_contact_id"
  add_index "sales_orders", ["order_status_id"], name: "index_sales_orders_on_order_status_id"
  add_index "sales_orders", ["owner"], name: "index_sales_orders_on_owner"
  add_index "sales_orders", ["potential_id"], name: "index_sales_orders_on_potential_id"
  add_index "sales_orders", ["purchase_order_id"], name: "index_sales_orders_on_purchase_order_id"
  add_index "sales_orders", ["quote_id"], name: "index_sales_orders_on_quote_id"

  create_table "solution_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "solutions", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "solution_status_id"
    t.integer  "product_id"
    t.text     "question"
    t.text     "answer"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "solutions", ["company_id"], name: "index_solutions_on_company_id"
  add_index "solutions", ["owner"], name: "index_solutions_on_owner"
  add_index "solutions", ["product_id"], name: "index_solutions_on_product_id"
  add_index "solutions", ["solution_status_id"], name: "index_solutions_on_solution_status_id"

  create_table "task_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.date     "due_date"
    t.integer  "owner"
    t.integer  "task_category_id"
    t.integer  "task_status_id"
    t.integer  "priority_id"
    t.text     "notes"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["company_id"], name: "index_tasks_on_company_id"
  add_index "tasks", ["owner"], name: "index_tasks_on_owner"
  add_index "tasks", ["priority_id"], name: "index_tasks_on_priority_id"
  add_index "tasks", ["task_category_id"], name: "index_tasks_on_task_category_id"
  add_index "tasks", ["task_status_id"], name: "index_tasks_on_task_status_id"

  create_table "taxes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usage_units", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.integer  "owner"
    t.integer  "phone"
    t.string   "email"
    t.string   "website"
    t.integer  "gl_account_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vendors", ["company_id"], name: "index_vendors_on_company_id"
  add_index "vendors", ["gl_account_id"], name: "index_vendors_on_gl_account_id"
  add_index "vendors", ["owner"], name: "index_vendors_on_owner"

end

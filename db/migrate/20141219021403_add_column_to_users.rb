class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_coach, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :education, :string
    add_column :users, :desired_industry, :string
    add_column :users, :desired_company, :string
    add_column :users, :previous_work_experiences, :string
    add_column :users, :verification, :string
  end
end

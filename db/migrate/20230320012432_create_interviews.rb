class CreateInterviews < ActiveRecord::Migration[7.0]
  def change
    create_table :interviews do |t|
      t.date :interveiw_on, null: false
      t.string :employee_name, null: false
      t.string :docter_name, null: false
      t.json :contents, null: false, default: {}

      t.timestamps
    end
  end
end

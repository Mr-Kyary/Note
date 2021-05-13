class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text     :state
      t.text     :task
      t.date     :limit_date
      t.text     :free_comment
      t.integer  :user_id

      t.timestamps
    end
  end
end
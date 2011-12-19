class CreateLeadMails < ActiveRecord::Migration
  def change
    create_table :lead_mails do |t|
      t.string :email
      t.integer :lead_id
      t.integer :mail_template_id
      t.integer :from_user_id

      t.timestamps
    end
  end
end

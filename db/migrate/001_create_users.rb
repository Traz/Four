class CreateUsers < ActiveRecord::Migration
  def change

    create_table :users do |t|

      t.string    :username
      t.string    :lastname
      t.string    :identity
      t.string    :email,                         :default => nil
      t.date      :birthdate
      t.boolean   :active,                        :default => false

    # Sorcery
      t.string    :crypted_password,              :default => nil
      t.string    :salt,                          :default => nil

      t.string    :remember_me_token,             :default => nil
      t.datetime  :remember_me_token_expires_at,  :default => nil

      t.string    :reset_password_token,          :default => nil
      t.datetime  :reset_password_token_expires_at,   :default => nil
      t.datetime  :reset_password_email_sent_at,  :default => nil
    
      t.datetime  :last_login_at,                 :default => nil
      t.datetime  :last_logout_at,                :default => nil
      t.datetime  :last_activity_at,              :default => nil

      t.integer   :failed_logins_count,           :default => 0
      t.datetime  :lock_expires_at,               :default => nil
      t.string    :unlock_token,                  :default => nil      
    
      t.string    :activation_state,              :default => nil
      t.string    :activation_token,              :default => nil
      t.datetime  :activation_token_expires_at,   :default => nil
    

      t.timestamps

    end

    add_index :users, :remember_me_token
    add_index :users, :reset_password_token
    add_index :users, [:last_logout_at, :last_activity_at]
    add_index :users, :activation_token      

  end
end

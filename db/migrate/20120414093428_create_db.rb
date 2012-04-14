class CreateDb < ActiveRecord::Migration
    
  def self.up  
    create_table :users do |t|
        t.string  :username
        t.string  :password
        t.string  :is_enabled
        t.string  :email
        
        t.timestamps
    end

    User.create :username => "admin",
             	:password => Digest::SHA1.hexdigest("admin"),
         	:is_enabled => 1,
		:email => "hello@estof.net"
      
    create_table :respondents do |t|
        t.references  :user
        t.string      :email
        t.boolean     :is_active

	t.timestamps
    end

    create_table :questions do |t|
        t.references  :user
        t.text        :text
        t.boolean     :is_deleted
	t.boolean     :is_active

	t.timestamps
    end


    
    create_table :inquiries do |t|
      t.references  :question
      t.references  :respondent
      t.boolean     :is_answered

      t.timestamps
    end
    
    create_table :answers do |t|
      t.references  :inquiry
      t.text        :text
      
      t.timestamps
    end
  end

  def self.down
	drop_table :answers
	drop_table :inquiries
	drop_table :questions
	drop_table :users
	drop_table :respondents
  end

end


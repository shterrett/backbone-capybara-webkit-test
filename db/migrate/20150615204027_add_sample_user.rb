class AddSampleUser < ActiveRecord::Migration
  def change
    User.create(name: 'Yoda',
                email: 'yoda@jedi.org'
               )
  end
end

class CreatePagesAndIps < ActiveRecord::Migration[6.1]
  def change
    create_table :pages_and_ips do |t|
      t.string :page
      t.string :ip

      t.timestamps
    end
  end
end

class AddCompanyNameDocsToSenders < ActiveRecord::Migration
  def change
    add_column :senders, :company, :string
    add_column :senders, :name, :string
    add_column :senders, :docs, :boolean
  end
end

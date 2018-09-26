class AddNameToLead < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :name, :string
  end
end

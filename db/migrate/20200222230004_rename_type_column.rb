class RenameTypeColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :transactions, :type, :type_of_trans
  end
end

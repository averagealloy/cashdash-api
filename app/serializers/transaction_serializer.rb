class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :kind, :date, :about, :account_id
end

json.array! @transactions.each do |transaction|
  json.id transaction.id
  json.user_id  transaction.user_id
  json.coin_id transaction.coin_id
  json.deposited transaction.deposited
  json.created_at transaction.format_time
end
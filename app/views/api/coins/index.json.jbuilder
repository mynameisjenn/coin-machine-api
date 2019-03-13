json.array! @coins do |coin|
	json.id coin.id
	json.name coin.name
	json.value coin.value
end


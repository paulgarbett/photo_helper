json.array!(@planets) do |planet|
  json.extract! planet, :id, :name, :image
  json.url planet_url(planet, format: :json)
end

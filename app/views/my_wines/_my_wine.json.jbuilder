json.extract! my_wine, :id, :name, :appellation_winery_id, :vintage, :quantity, :size, :my_wine_cellar_id, :created_at, :updated_at
json.url my_wine_url(my_wine, format: :json)

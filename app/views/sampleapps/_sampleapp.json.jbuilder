json.extract! sampleapp, :id, :Fname, :Lname, :Gender, :Address, :Country, :created_at, :updated_at
json.url sampleapp_url(sampleapp, format: :json)

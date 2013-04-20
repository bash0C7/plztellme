json.array!(@telephones) do |telephone|
  json.extract! telephone, :number
  json.url telephone_url(telephone, format: :json)
end
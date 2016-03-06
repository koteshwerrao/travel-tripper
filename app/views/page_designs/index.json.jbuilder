json.array!(@page_designs) do |page_design|
  json.extract! page_design, :id, :design, :user_id
  json.url page_design_url(page_design, format: :json)
end

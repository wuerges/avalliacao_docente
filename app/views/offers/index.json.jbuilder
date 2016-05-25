json.array!(@offers) do |offer|
  json.extract! offer, :id, :professor_id, :course_id
  json.url offer_url(offer, format: :json)
end

json.array!(@answers) do |answer|
  json.extract! answer, :id, :offer_id, :a01, :a02, :a03, :a04, :a05, :a06, :a07, :a08, :a09, :a10, :a11, :a12, :a13, :a14, :comment
  json.url answer_url(answer, format: :json)
end

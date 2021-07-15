json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :id, :name, :concept, :body, :image
  json.url testimonial_url(testimonial, format: :json)
end

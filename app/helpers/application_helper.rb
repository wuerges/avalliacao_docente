module ApplicationHelper

  def teste(as)
    counts = Hash.new(0)
    as.each do |q,v|
      counts[v] += 1
    end
    pie_chart counts
  end
end

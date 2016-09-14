module ApplicationHelper

  def teste(as)
    counts = Hash.new(0)
    ["péssimo", "ruim", "regular", "bom", "excelente"].each do |v| 
      counts[v] = 0
    end
    ["muito fácil", "fácil", "médio", "difícil", "muito difícil"].each do |v|
      counts[v] = 0
    end

    as.each do |q,v|
      counts[v] += 1
    end

    pie_chart counts.sort.reverse
  end
end

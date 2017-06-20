# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#

require 'csv'


l = false

CSV.foreach("db/disciplinas_2017_1.csv") do |row|
  if l
    begin
      codigo, nome, professor, turno, fase, ativo = row

      Offer.create_by_names!(codigo, nome, professor,
                           turno, fase, ativo)
    rescue
      puts "Erro:", row
    end
  end
  l = true
end




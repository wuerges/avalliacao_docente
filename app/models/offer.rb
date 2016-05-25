class Offer < ActiveRecord::Base
  belongs_to :professor
  belongs_to :course

  def self.create_by_names!(codigo, nome, professor, turno, fase, ativo)

    to_bool = {'S' =>  true, 'N' => false }

    puts codigo, nome, professor, turno, fase, ativo

    c = Course.find_or_create_by!(code: codigo, name: nome)
    p = Professor.find_or_create_by!(name: professor)
    Offer.find_or_create_by!(
      professor: p, 
      course: c,
      semester: fase.to_i,
      shift: turno.to_i,
      active: to_bool[ativo]
    )
  end
end

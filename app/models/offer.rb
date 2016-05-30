class Offer < ActiveRecord::Base
  belongs_to :professor
  belongs_to :course
  has_many :answers
  before_create :randomize_id


  def self.create_by_names!(codigo, nome, professor, turno, fase, ativo)

    to_bool = {'S' =>  true, 'N' => false }
    from_turno = {'M'=> 1, 'N' => 2}

    c = Course.find_or_create_by!(code: codigo, name: nome)
    p = Professor.find_or_create_by!(name: professor)
    Offer.find_or_create_by!(
      professor: p, 
      course: c,
      semester: fase.to_i,
      shift: from_turno[turno],
      active: to_bool[ativo]
    )
  end


  def turno 
    to_turno = {1 => 'Matutino', 2 => 'Noturno'}
    to_turno[shift]

  end



  private
  def randomize_id
    begin
      self.id = SecureRandom.random_number(1_000_000_000_000_000)
    end while Model.where(id: self.id).exists?
  end
end

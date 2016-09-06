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


  #def to_param
  #  secure_id.to_s
  #end


  private
  def randomize_id
    self.secure_create_id = SecureRandom.random_number(2**63)
    self.secure_list_id = SecureRandom.random_number(2**63)
  end
end

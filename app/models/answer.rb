class Answer < ActiveRecord::Base
  belongs_to :offer
  before_create :randomize_id

  validates :a01, presence: true
  validates :a02, presence: true
  validates :a03, presence: true
  validates :a04, presence: true
  validates :a05, presence: true
  validates :a06, presence: true
  validates :a07, presence: true
  validates :a08, presence: true
  validates :a09, presence: true
  validates :a10, presence: true
  validates :a11, presence: true
  validates :a12, presence: true
  validates :a13, presence: true
  validates :a14, presence: true
  validates :comment, presence: true, length: { minimum: 3 }

  def self.como_aluno
    {
      :a01 => "Meus conhecimentos prévios para acompanhar o componente curricular são:",
      :a02 => "Minha aprendizagem neste componente curricular está sendo:",
      :a03 => "Minha motivação para freqüentar o componente curricular é:",
      :a04 => "Minha avaliação da turma (do componente curricular) quanto a empenho, dedicação e motivação neste componente curricular é:",
      :a05 => "Minha visão sobre o tempo que eu dedico para estudar este componente curricular é:",
      :a06 => "Em relação a outros componentes curriculares que você está cursando, avalie o nível de complexidade deste componente:",
    }
  end
  def self.sobre_professor
    {
      :a07 => "A motivação do professor para ministrar as aulas é:",
      :a08 => "O desenvolvimento dos conteúdos, quanto a clareza, objetividade e metodologia, é:",
      :a09 => "O conhecimento do professor, independente da didática, sobre o conteúdo ministrado é:",
      :a10 => "O planejamento das aulas, quanto a encadeamento de assuntos, exercícios é:",
      :a11 => "Os instrumentos de avaliação (provas, trabalhos, etc) e os critérios (peso, individual/em grupo, etc) são:",
      :a12 => "O relacionamento do professor com os alunos é:",
      :a13 => "O aproveitamento do tempo de aula pelo professor é:",
      :a14 => "Quanto à preocupação com a aprendizagem do aluno, a atuação do professor é:"
    }
  end

  def self.resposta_pergunta
    bom_mal = (1..5).zip ["péssimo", "ruim", "regular", "bom", "excelente"]
    facil_dificil = (1..5).zip ["muito fácil", "fácil", "médio", 
                     "difícil", "muito difícil"]
    {
      :a01 => bom_mal,
      :a02 => bom_mal,
      :a03 => bom_mal,
      :a04 => bom_mal,
      :a05 => bom_mal,
      :a06 => facil_dificil,
      :a07 => bom_mal,
      :a08 => bom_mal,
      :a09 => bom_mal,
      :a10 => bom_mal,
      :a11 => bom_mal,
      :a12 => bom_mal,
      :a13 => bom_mal,
      :a14 => bom_mal
    }
  end

  def texto(cod)
    bom_mal = Hash[(1..5).zip ["péssimo", "ruim", "regular", "bom", "excelente"]]
    facil_dificil = Hash[(1..5).zip ["muito fácil", "fácil", "médio", "difícil", "muito difícil"]]

    if cod == :a06
      facil_dificil[send cod]
    else
      bom_mal[send cod]
    end
  end

  def to_param
    secure_id.to_s
  end

  private
  def randomize_id
    begin
      self.secure_id = SecureRandom.random_number(2**63)
    end while Answer.where(secure_id: self.secure_id).exists?
  end

end

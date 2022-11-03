class Veiculo < ApplicationRecord
    
    has_many :owners, dependent: :destroy

    validates :placa, presence: true
    validates :cor, presence: true, length: { minimum: 8 }
  end
  


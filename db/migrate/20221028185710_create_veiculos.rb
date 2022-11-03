class CreateVeiculos < ActiveRecord::Migration[7.0]
  def change
    create_table :veiculos do |t|
      t.string :placa, :modelo, :cor, :observacao
      t.boolean :ativa
      
      t.timestamps
    end
  end
end

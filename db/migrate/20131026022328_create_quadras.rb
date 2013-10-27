class CreateQuadras < ActiveRecord::Migration
  def change
    create_table :quadras do |t|

      t.string :nome
      t.string :endereco
      t.string :cidade_id

    end
  end
end

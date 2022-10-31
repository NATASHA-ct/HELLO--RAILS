# frozen_string_literal: true

# top level doc comment error solved

class AddColumnsToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :address, :string
    add_column :students, :program, :string
  end
end

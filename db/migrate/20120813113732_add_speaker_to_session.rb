class AddSpeakerToSession < ActiveRecord::Migration
  def change
    add_column :sessions, :speaker, :string
  end
end

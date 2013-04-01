class Video < ActiveRecord::Base
  attr_accessible :code, :description, :iq, :outlook, :pep, :sarcasm, :source, :title

  def self.happiest_video
    Video.order('pep DESC').first
  end
end

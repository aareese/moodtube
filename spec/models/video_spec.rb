require 'spec_helper'

describe Video do

  describe "#happiest_video" do
    it "should return the happiest video in the whole database" do
      v1 = Video.create({
        title: 'Do the Creep',
        pep: 0.2,
        sarcasm: 0.0,
        outlook: 1.0,
        iq: 1.0
      })

      v2 = Video.create({
        title: 'I Threw it on the Ground',
        pep: 0.6,
        sarcasm: 0.1,
        outlook: 1.0,
        iq: 0.1
      })

      v3 = Video.create({
        title: "Real Men Don't look at explosions",
        pep: 0.3,
        sarcasm: 0.2,
        outlook: 1.0,
        iq: 0.5
      })

      Video.happiest_video.title.should == 'I Threw it on the Ground'
    end
  end

end

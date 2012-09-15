module CommitPic
  class GetPic
    def initialize(tempfile)
      @tempfile = tempfile
    end

    def take_photo
      system("imagesnap #{@tempfile.path}")
    end
  end
end

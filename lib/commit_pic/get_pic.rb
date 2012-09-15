module CommitPic
  class GetPic
    def initialize(tempfile)
      @tempfile = tempfile
    end

    def grab
      system("imagesnap #{@tempfile.path}")
    end
  end
end

module CommitPic
  class GetPic
    def initialize(tempfile)
      @tempfile = tempfile
    end

    def grab
      system("imagesnap #{@tempfile.path}")
    end

    def self.grab
      new(Tempfile.new('commit_pic'))
    end
  end
end

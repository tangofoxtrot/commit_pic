module CommitPic
  module GetPic
    def self.grab(tempfile = Tempfile.new('commit_pic'))
      system("imagesnap #{tempfile.path}")
      tempfile
    end
  end
end

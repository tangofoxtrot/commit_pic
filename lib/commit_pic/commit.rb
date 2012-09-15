module CommitPic
  class Commit
    def initialize(commit)
      @commit = commit
    end

    def sha
      @commit.sha
    end

    def author
      @commit.author.name
    end

    def ==(other_commit)
      self.sha == other_commit.sha
    end

    def self.last_commit(git)
      new(git.log(1).first)
    end
  end
end

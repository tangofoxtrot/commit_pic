require 'git'
module CommitPic
  class Commit
    attr_reader :project
    def initialize(project, commit)
      @project = project
      @commit = commit
    end

    def sha
      @commit.sha
    end

    def author
      @commit.author.name
    end

    def self.last_commit(project, working_dir)
      g = Git.open(working_dir)
      new(project, g.log(1).first)
    end
  end
end

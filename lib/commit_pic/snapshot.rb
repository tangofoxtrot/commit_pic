require 'git'
module CommitPic
  class Snapshot
    attr_reader :project_name, :working_dir, :commit, :photo

    def initialize(project_name, working_dir)
      @project_name = project_name
      @working_dir = working_dir
    end

    def grab
      @commit = Commit.last_commit(git)
      @photo = GetPic.grab
    end

    def git
      @git ||= Git.open(@working_dir)
    end

    def attributes
      {:sha =>commit.sha,
        :author => commit.author,
        :project => project_name,
        :picture => photo
      }
    end
  end
end

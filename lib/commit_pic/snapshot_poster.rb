require 'httparty'
module CommitPic
  class SnapshotPoster

    def self.url
      'http://localhost:3000'
    end

    def initialize(snapshot)
      @snapshot = snapshot
    end

    def post
      HTTParty.post(self.class.url, @snapshot.attributes)
    end
  end
end

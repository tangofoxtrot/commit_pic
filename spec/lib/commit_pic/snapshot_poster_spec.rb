require 'commit_pic'

describe CommitPic::SnapshotPoster do
  let(:snapshot) { stub('snapshot', :attributes => {:author => "Author Name"})  }
  it 'posts the snapspot attributes to the remote server' do
    HTTParty.should_receive(:post).with(described_class.url, snapshot.attributes)
    described_class.new(snapshot).post
  end
end

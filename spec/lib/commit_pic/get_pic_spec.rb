require 'lib/commit_pic/get_pic'

describe CommitPic::GetPic do
  let(:tempfile) { Tempfile.new('commit_pic') }
  let(:get_pic) { described_class.new(tempfile) }

  it 'takes a tempfile for initialization'
  it 'delegates to the system command' do
    get_pic.should_receive(:system).with("imagesnap #{tempfile.path}")
    get_pic.take_photo
  end
end


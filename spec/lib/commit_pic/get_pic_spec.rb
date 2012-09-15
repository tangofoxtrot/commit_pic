require 'commit_pic'

describe CommitPic::GetPic do
  let(:tempfile) { Tempfile.new('commit_pic') }

  it 'delegates to the system command' do
    described_class.should_receive(:system).with("imagesnap #{tempfile.path}")
    described_class.grab(tempfile).should be_a(Tempfile)
  end

end


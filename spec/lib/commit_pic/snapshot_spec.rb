require 'commit_pic'

describe CommitPic::Snapshot do
  let(:working_dir) { File.expand_path(__FILE__ + '../../../../fixtures/sample_app') }
  let(:snapshot) { described_class.new(project_name, working_dir) }
  let(:project_name) { 'awesome' }

  it 'has a project name' do
    snapshot.project_name.should == project_name
  end

  it 'has a working dir' do
    snapshot.working_dir.should == working_dir
  end

  describe 'accessing the git repo' do
    it 'uses the Git gem to build an object from the working dir' do
      Git.should_receive(:open).with(working_dir)
      snapshot.git
    end
  end

  describe 'grabbing a snapshot' do
    it 'retrieves the last commit' do
      CommitPic::Commit.stub(:last_commit => "last_commit")
      snapshot.grab
      snapshot.commit.should == "last_commit"
    end

    it 'retrieves the last commit' do
      CommitPic::GetPic.stub(:grab => "pic")
      snapshot.grab
      snapshot.photo.should == "pic"
    end
  end
end

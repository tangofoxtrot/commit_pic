require 'commit_pic'

describe CommitPic::Commit do
  let(:git_commit) { stub(:sha => "abc", :author => stub(:name => "Author Name")) }
  let(:commit) { described_class.new(git_commit) }

  it 'has a sha' do
    commit.sha.should == 'abc'
  end

  it 'has an author' do
    commit.author.should == 'Author Name'
  end

  describe 'retrieving the last_commit' do
    let(:git) { stub("Git object") }
    it 'grabs the last commit from the git object' do
      git.should_receive(:log).with(1).and_return([git_commit])
      described_class.last_commit(git).should == described_class.new(git_commit)
    end
  end

end

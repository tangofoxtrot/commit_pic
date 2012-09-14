require 'commit_pic'
describe CommitPic::Commit do
  let(:working_dir) { '/Users/rluther/Desktop/commit_pic/spec/fixtures/sample_app' }
  let(:project) { 'sidereel' }
  describe 'retrieving the last commit' do
    let(:commit_pic) { described_class.last_commit(project, working_dir) }

    it 'returns the project' do
      commit_pic.project.should == project
    end

    it 'retrieves the sha' do
      commit_pic.sha.should == 'ef23b0c389a637b3c112993d981dd69178ad1eb4'
    end

    it 'retrieves the authors' do
      commit_pic.author.should == 'Richard Luther'
    end
  end
end

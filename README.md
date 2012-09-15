Usage

snapshot = CommitPic::Snapshot.new('name of your project', 'directory of your app')
snapshot.grab
CommitPic::SnapshotPoster.new(snapshot).post

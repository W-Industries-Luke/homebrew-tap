class Sshc < Formula
  desc "Answer ssh, scp, sftp and rsync password prompts from a stored secret"
  homepage "https://github.com/W-Industries-Luke/sshc"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.6.0/sshc-darwin-arm64"
      sha256 "71a79e250754d702fe78a2c54a38f4bc5eea3e35935de131723196294ae341be"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.6.0/sshc-darwin-amd64"
      sha256 "35f0efadbee05e5f4db61a4530232a9c5b5857c739dde5de37b875e2bb26408d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.6.0/sshc-linux-arm64"
      sha256 "5f1de956c0daa9ffee312903a82f1112f999303389130e438290aaa1b7719f7d"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.6.0/sshc-linux-amd64"
      sha256 "090e052ae11faf1756a347adca276afe6a9dbc87c650a7718fe78e51050c2c98"
    end
  end

  def install
    bin.install Dir["sshc-*"].first => "sshc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshc --version")
  end
end

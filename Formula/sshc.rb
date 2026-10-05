class Sshc < Formula
  desc "Answer ssh, scp, sftp and rsync password prompts from a stored secret"
  homepage "https://github.com/W-Industries-Luke/sshc"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.5.0/sshc-darwin-arm64"
      sha256 "6ba40b7043ed21152749680099e40b4980e89f8fb5df97a2f61fcb8bd989fdac"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.5.0/sshc-darwin-amd64"
      sha256 "634be6fbd244c928d991a87d142adc69c367ed80716f0f50ad3d0e479b75d6a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.5.0/sshc-linux-arm64"
      sha256 "38c7a94684b54603bdd2e2100f313030fabfc6f889275d9f1282d56b41fee593"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.5.0/sshc-linux-amd64"
      sha256 "9311c2e7e5c01597bf53beaa15f0b287a76c1927b211321800070ba7434aea1d"
    end
  end

  def install
    bin.install Dir["sshc-*"].first => "sshc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshc --version")
  end
end

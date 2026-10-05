class Sshc < Formula
  desc "Answer ssh, scp, sftp and rsync password prompts from a stored secret"
  homepage "https://github.com/W-Industries-Luke/sshc"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.3.1/sshc-darwin-arm64"
      sha256 "5ffaa2ac0ad187aa742093cb9ebfb6e3d4ee0b00749de4cf9c249ad0450f8705"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.3.1/sshc-darwin-amd64"
      sha256 "18dff017e6cb278accd7c6ed64ee3d9b0dbf539b7e81d000ad7c5da5150ce5e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.3.1/sshc-linux-arm64"
      sha256 "64601be2a1ac82d5de9200cc2d8d0c40868bab60c8c816f049fd55b5879e48f6"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.3.1/sshc-linux-amd64"
      sha256 "db27b3c5067d3779c8481ce60b5516b53eda619a7f140f7295593890572dfb95"
    end
  end

  def install
    bin.install Dir["sshc-*"].first => "sshc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshc --version")
  end
end

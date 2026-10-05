class Sshc < Formula
  desc "Answer ssh, scp, sftp and rsync password prompts from a stored secret"
  homepage "https://github.com/W-Industries-Luke/sshc"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.7.0/sshc-darwin-arm64"
      sha256 "61c89ca7b0a1c512a4827fa6ea6dc8ee7df28a5a7925002c1c1f4e9eb1275717"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.7.0/sshc-darwin-amd64"
      sha256 "656c76341d41300dc6a2779e77ec8be8bddd29733d8f2873e4d173da430a7780"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.7.0/sshc-linux-arm64"
      sha256 "a2ae954aeda289896902119f636d784e2ed46df2a0085602c8a512fddac0d5e6"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.7.0/sshc-linux-amd64"
      sha256 "41ada9d861281d359e8de0850aa59aab1800b3c98c52c966fc7f02c912ca5bc5"
    end
  end

  def install
    bin.install Dir["sshc-*"].first => "sshc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshc --version")
  end
end

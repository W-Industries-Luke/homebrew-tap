class Sshc < Formula
  desc "Answer ssh, scp, sftp and rsync password prompts from a stored secret"
  homepage "https://github.com/W-Industries-Luke/sshc"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.3.0/sshc-darwin-arm64"
      sha256 "75883ed9e699e2bed9dd7905f9db067aaab8c5e0761de5dce9c353890238c283"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.3.0/sshc-darwin-amd64"
      sha256 "4c1ddd61cd2cd130e2d1e21ff28aec58604d7cc7d50bc32b7c94628b7c91066b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.3.0/sshc-linux-arm64"
      sha256 "91620f4530b0363c290735e1591e1218575e1f1346121120c55cc9908c0a5004"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.3.0/sshc-linux-amd64"
      sha256 "ce076fc032494188a49d4e3baafc55b77b02c93448de565b43d23112bef201d8"
    end
  end

  def install
    bin.install Dir["sshc-*"].first => "sshc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshc --version")
  end
end

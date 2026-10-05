class Sshc < Formula
  desc "Answer ssh, scp, sftp and rsync password prompts from a stored secret"
  homepage "https://github.com/W-Industries-Luke/sshc"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.6.2/sshc-darwin-arm64"
      sha256 "44e819ce56028f2cae6d7391c261d4832d356ceb8e6bc9b226cd0564a6a706cc"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.6.2/sshc-darwin-amd64"
      sha256 "e1507bed4e91f89faaa0907d2c78c59c8c48948b79479c4605c59d0074a407ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.6.2/sshc-linux-arm64"
      sha256 "204eefa3d20f441cc5cdd92289d0f7574eba4f073f5bada74472d54233b527ac"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.6.2/sshc-linux-amd64"
      sha256 "fe6931ac71894e4d7a0495583e63a13586037ade7d980a2150c311baa692ac3c"
    end
  end

  def install
    bin.install Dir["sshc-*"].first => "sshc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshc --version")
  end
end

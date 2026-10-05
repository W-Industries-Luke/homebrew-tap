class Sshc < Formula
  desc "Answer ssh, scp, sftp and rsync password prompts from a stored secret"
  homepage "https://github.com/W-Industries-Luke/sshc"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.1.1/sshc-darwin-arm64"
      sha256 "b607525ec1343de489ab66df84423a75fb458b311c8e23b3506543bd25e194a3"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.1.1/sshc-darwin-amd64"
      sha256 "c6d39ebce24db59547af76c582e41f4b1f4c8d813a637a8d98dee059cc33bc88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.1.1/sshc-linux-arm64"
      sha256 "2b8013216da575155cb7a53eab09b5b00653b2f55264ccbfab62af2554dd9038"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.1.1/sshc-linux-amd64"
      sha256 "e56fad070df5794d3eac3da81925fecb1fdacde09a18a9464dca27b4b4e1dfa4"
    end
  end

  def install
    bin.install Dir["sshc-*"].first => "sshc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshc --version")
  end
end

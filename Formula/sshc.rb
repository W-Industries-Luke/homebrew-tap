class Sshc < Formula
  desc "Answer ssh, scp, sftp and rsync password prompts from a stored secret"
  homepage "https://github.com/W-Industries-Luke/sshc"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.6.1/sshc-darwin-arm64"
      sha256 "ac30ac15b18af7a370194b2b9af80df4c155dd2941bfda92693d1d5b82eac606"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.6.1/sshc-darwin-amd64"
      sha256 "785730df12858777f31cab2f20f3f558ae457c223aa7b5dc059df5a1c1dfbed5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.6.1/sshc-linux-arm64"
      sha256 "4d166e456254e0295bcd16e30124f435113ebc25dac555387535fe27f75e09e2"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.6.1/sshc-linux-amd64"
      sha256 "eb87388cff4f7205262001e6486108da1c3998bd93b924391fbaed647eb2ed40"
    end
  end

  def install
    bin.install Dir["sshc-*"].first => "sshc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshc --version")
  end
end

class Sshc < Formula
  desc "Answer ssh, scp, sftp and rsync password prompts from a stored secret"
  homepage "https://github.com/W-Industries-Luke/sshc"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.2.0/sshc-darwin-arm64"
      sha256 "a255e9ef563e13dfa2fd7e64272059e8c99878e706d0a7fb68abd4a18b0e850c"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.2.0/sshc-darwin-amd64"
      sha256 "fe6e8d8c32333dd7584c78b519e2d2b4f94bcb17cc3de136012fec9b8465f411"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.2.0/sshc-linux-arm64"
      sha256 "dba12fc5d4729121b657e1e0c625ba2d5cb02f6eb0d8a093a1123cc363eb2633"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.2.0/sshc-linux-amd64"
      sha256 "ebd263351f2898e61ca49783e14de172fd29459c06bd62d01247445834eec32a"
    end
  end

  def install
    bin.install Dir["sshc-*"].first => "sshc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshc --version")
  end
end

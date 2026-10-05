class Sshc < Formula
  desc "Answer ssh, scp, sftp and rsync password prompts from a stored secret"
  homepage "https://github.com/W-Industries-Luke/sshc"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.7.1/sshc-darwin-arm64"
      sha256 "ee1330b563a9e1fdfc627aae030a01c9d4d3e8e39b8ef3ee3ecf194756d5d2e8"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.7.1/sshc-darwin-amd64"
      sha256 "e0a1ce8c8fad69176009b4ea6ffe028fcb899b95386592c2a14193994a95436f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.7.1/sshc-linux-arm64"
      sha256 "a1d49947483877ce51ac82a65e768573ce57a670572a7c807ca651945b58a240"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.7.1/sshc-linux-amd64"
      sha256 "98eafb37ecf875586d2f8dbf07fde53d15ec460a6b603e9e0c7fbeea6261a265"
    end
  end

  def install
    bin.install Dir["sshc-*"].first => "sshc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshc --version")
  end
end

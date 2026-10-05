class Sshc < Formula
  desc "Answer ssh, scp, sftp and rsync password prompts from a stored secret"
  homepage "https://github.com/W-Industries-Luke/sshc"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.4.0/sshc-darwin-arm64"
      sha256 "06c58c2be1d41c7e0ef6c7caecccaa5b3cd1a4b6c4d806f1c77d3126ef444f18"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.4.0/sshc-darwin-amd64"
      sha256 "3dd95402a8d29f223a214382876b052dfa1ab4fdd17eb6355b8779f05ded18e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.4.0/sshc-linux-arm64"
      sha256 "397dca00da2a3cc4933bc43b3ea59a980c6ca7257a2ddaaeaf6b94ca103090a8"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.4.0/sshc-linux-amd64"
      sha256 "d7587c72765b445e5bee539f2d04fa14777f0a1e039fc60c8e74fc677347ea44"
    end
  end

  def install
    bin.install Dir["sshc-*"].first => "sshc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshc --version")
  end
end

class Sshc < Formula
  desc "Answer ssh, scp, sftp and rsync password prompts from a stored secret"
  homepage "https://github.com/W-Industries-Luke/sshc"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.2.1/sshc-darwin-arm64"
      sha256 "f8e1552bfb3d9f7698e3df93b87c27d0ad3841b794604348c5d43df79727cdff"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.2.1/sshc-darwin-amd64"
      sha256 "afb3e4c685a053f86239c53f2e9bff2673069b4522f140312db268f929d854ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.2.1/sshc-linux-arm64"
      sha256 "1c188a46f3e5dfb8bc1ad7336486c54209d838098731fd1458b4d6403ca24c27"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.2.1/sshc-linux-amd64"
      sha256 "019403b4b2b2591f646cb07709b6165d503be037aa1f80a9adda99f4a87d4e3a"
    end
  end

  def install
    bin.install Dir["sshc-*"].first => "sshc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshc --version")
  end
end

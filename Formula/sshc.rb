class Sshc < Formula
  desc "Answer ssh, scp, sftp and rsync password prompts from a stored secret"
  homepage "https://github.com/W-Industries-Luke/sshc"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.3.2/sshc-darwin-arm64"
      sha256 "f98c2a8eac0e3f802c4543f115ffbd9ecdf62fef1994ec06cfeec7b55fd32882"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.3.2/sshc-darwin-amd64"
      sha256 "30a262cceeb104b6b94f2d6cc6c27c6fdda1c356be7999cd16bc0b5a01b35364"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.3.2/sshc-linux-arm64"
      sha256 "bd6283158f2d3542eca16bdbdefe1fb97c43798404e9f88370ad0bb95d5aad9c"
    end
    on_intel do
      url "https://github.com/W-Industries-Luke/sshc/releases/download/v0.3.2/sshc-linux-amd64"
      sha256 "5b4480955c77ba6ec1c5d3b5e86666e8dc3ad1fd1a0ed79295167c596928a421"
    end
  end

  def install
    bin.install Dir["sshc-*"].first => "sshc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sshc --version")
  end
end

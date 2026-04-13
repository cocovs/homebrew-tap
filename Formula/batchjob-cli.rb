class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/cocovs/batchjob-agent-kit"
  version "0.1.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.13/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "3c83476f79fb9f7c61f1d14c7dbdf92e6c076a333aaf3b6e20b99afc1cfe9a02"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.13/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "6b6cfc409ca565b5b7304f78f42af397ae910cdaab991fb34cdb3cf4737cba3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.13/batchjob-cli-linux-arm64.tar.gz"
      sha256 "2e0abdd7adc8f389774050759618305f8f71ecb0226da3eead2c6096f351769c"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.13/batchjob-cli-linux-amd64.tar.gz"
      sha256 "11c213f27bdd6b104678438908acef6e53cea9abce7cd5e44a865510a312cd50"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end

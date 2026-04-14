class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/cocovs/batchjob-agent-kit"
  version "0.1.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.16/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "941152862ce695f1a05a4666211a01797802fb7471cc489a9a00e80f2a31944a"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.16/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "1b727e231f348d633448b5740062000ccc4e37403d8669f7786421e8b67efc72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.16/batchjob-cli-linux-arm64.tar.gz"
      sha256 "e9a092503799bb7ac7936b5d6cf7e6c892d016b434ad3ff5238544dc9068e9e9"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.16/batchjob-cli-linux-amd64.tar.gz"
      sha256 "94abbcc675ae5d4372dd1aabda904fe0cce111c6cb1d2866c42b9d487257dbcd"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end

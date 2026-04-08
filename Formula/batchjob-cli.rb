class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/cocovs/batchjob-agent-kit"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.1/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "c2bfbf6f85a71494dde8ff8de07501d16d8fe2ba736fdd22a62f5ff8ebc104be"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.1/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "4cf1dfcb00763475a4134dda03e15853ed6bbec138a408d3b44e4b6a146358a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.1/batchjob-cli-linux-arm64.tar.gz"
      sha256 "fad5b1ca84e3037a386514c0230421acf3b74547b67dec9af3a16329f9382c25"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.1/batchjob-cli-linux-amd64.tar.gz"
      sha256 "bb8d0feeb047c2200f0eaab317d4b7825180716a4504013257cf9d83ace2f16d"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end

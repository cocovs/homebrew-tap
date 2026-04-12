class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/cocovs/batchjob-agent-kit"
  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.4/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "29acf0977c9bc6113b5914902f9935646904e8d46793a8f740e9a914d7cf4bbe"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.4/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "5c60a4be47584d5bc08d0165ee73194ee57d0a35112e2c200187b196c4c7b2fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.4/batchjob-cli-linux-arm64.tar.gz"
      sha256 "8d0d6a554e1cd166890bc79ae5f016c948f65b46d6ab6638024561f7562bbac5"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.4/batchjob-cli-linux-amd64.tar.gz"
      sha256 "99b460a9173c5ba0e6054ffba337153f81f33941d4cd9051343df06af1e0f675"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end

class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/cocovs/batchjob-agent-kit"
  version "0.1.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.11/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "e2bb7a1d4b5a3058585d5e9d0f397bffd9f43d929637de6c4837ebfccf3c5c20"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.11/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "c2083bc2ff9a2cfa643b5514149e4396866d0492638eca68c74f6b7a4972b6e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.11/batchjob-cli-linux-arm64.tar.gz"
      sha256 "c439c6f1a211f6be681c256cf57902bcd17c0edefd0a41179d4d7736b17fa4b8"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.11/batchjob-cli-linux-amd64.tar.gz"
      sha256 "869bc066a5bed9f4d8d65fbc4faf317cce442dbdfa3e92a866be694304aa29bf"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end

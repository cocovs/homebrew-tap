class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/cocovs/batchjob-agent-kit"
  version "0.1.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.15/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "8b5c0b89482a3475801c976c56a06ff5979a00f05c5c1e89f614fa73b233a05a"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.15/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "340fd3f3a05bcff2a3e17e53914354d60ba8fa5a888ead1a166c1682ab8eadad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.15/batchjob-cli-linux-arm64.tar.gz"
      sha256 "ddb0c96acaeffea1e9434e207846966dc754ab336c3345c7ea73bff124c494e7"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.15/batchjob-cli-linux-amd64.tar.gz"
      sha256 "e1b81c356a849b9f2c9397eefe5a83061c7e576c9270eec1de37ebeb60c97816"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end

class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/cocovs/batchjob-agent-kit"
  version "0.1.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.10/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "3a15ca7a656eb0cdddf014f816dd3bea5b9d5cd21cac9eeae1f51fd662d8eb50"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.10/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "193a588372b2a4acc4e3df15a90b0c6bb7ccb0c941977577e1d2d53896327039"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.10/batchjob-cli-linux-arm64.tar.gz"
      sha256 "734f40b4e3f82e97b5abdaaf40246ed678b740bd2261e79cca58a1a4e8daafe2"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.10/batchjob-cli-linux-amd64.tar.gz"
      sha256 "3f987f9a1176f1e1c6017cbca0bbd3137959a61f92973558eecddfe99361e63c"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end

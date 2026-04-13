class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/cocovs/batchjob-agent-kit"
  version "0.1.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.14/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "b7567bc4b71fe6d5cfc6d9f28251006531f2c9dc45c4cc2d508cff696b526fa3"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.14/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "ba023eaa086244b3637d40890a9c6bb6f02f50edf2880018c7751c71475745a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.14/batchjob-cli-linux-arm64.tar.gz"
      sha256 "ca81187d55af99b6513736b809ce8a1bdafbc84474355632600b3bf3b35b79b6"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.14/batchjob-cli-linux-amd64.tar.gz"
      sha256 "4b17d22192c9f7f269bc573690558b0723f4764bd239ab9e08852eac9e690e45"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end

class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/cocovs/batchjob-agent-kit"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.8/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "99564f14ac9d6c26aab9ad8f698b34435ac56a2f91b0dcc7a8fe919472a10723"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.8/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "f21e7da8b417c27304b12056179ad78ba4211310d48e06a1c1ca0868ce175ab9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.8/batchjob-cli-linux-arm64.tar.gz"
      sha256 "efb2684bbd19e448414d6f577e9e58776cd624606f7f131336be212aa8e871b9"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.8/batchjob-cli-linux-amd64.tar.gz"
      sha256 "c879977bdf4a9d9784a99c0de6b87f764eca43f81faf229051c1ab9ec511b45e"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end

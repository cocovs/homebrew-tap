class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/cocovs/batchjob-agent-kit"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.9/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "f3c2df434c15f5822831f9720cb63676010e28e49972a20f835a336681fed3ca"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.9/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "d169fa755562510fe28d0b5230be9014754c0ec6479921dc403c97f6121cae3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.9/batchjob-cli-linux-arm64.tar.gz"
      sha256 "b856e9cfac57a687d99d940040c72dc7e52b3da01f16e588c28d85eb5a5426db"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.9/batchjob-cli-linux-amd64.tar.gz"
      sha256 "5ffb1421eb649b5ce4af4cb9a2bf722be2fe6f27624ef6aea727c46683eb2d4c"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end

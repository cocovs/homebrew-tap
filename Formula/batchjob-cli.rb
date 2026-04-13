class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/cocovs/batchjob-agent-kit"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.6/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "8767407043d2d475d813524828f9551701b522cdf5017ba1808c30d5ae66ea47"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.6/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "b83bd4ef4f226f6faa78669b4c94a8cc78e6c1fa863cbf30da076b1aac5fd6af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.6/batchjob-cli-linux-arm64.tar.gz"
      sha256 "265e82bfc956846d8ee34c6f6b9c76057bd2d1e9b61189e727010b8872f1def1"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.6/batchjob-cli-linux-amd64.tar.gz"
      sha256 "e4d3e3c4cbeb8fcc706814c908115078e99d533ee64960269b933ceabff3a8fe"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end

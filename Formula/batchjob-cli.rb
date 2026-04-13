class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/cocovs/batchjob-agent-kit"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.7/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "e9db3f1c1d116818184181bff74527a5633f29173f9c9295548cb9e568049a19"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.7/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "91529cee5130e5eb7c0aa2f642f4caca463a9d1ad274ae197be747d9a4539d91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.7/batchjob-cli-linux-arm64.tar.gz"
      sha256 "dd65399c7743986ed61e0c50526c9df0f1d8a313960a9940d349d9ed00e3947d"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.7/batchjob-cli-linux-amd64.tar.gz"
      sha256 "501f0510cd880bb8a4ca386ddaf5dcd4ae4ecf580b24ea41aaee0900dd90536f"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end

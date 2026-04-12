class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/cocovs/batchjob-agent-kit"
  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.5/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "fa9b461b511f8e431e8279002b411ce8a39dc01065727625eb362e96b7576c88"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.5/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "570fd7572167b834292ccadae190e8728c1d2155b32b3d26d0978d1da602fb4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.5/batchjob-cli-linux-arm64.tar.gz"
      sha256 "312e52a17b3265c73c402cae35919cca5c67116ad7ebe93b465c03c6e8e30e22"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.5/batchjob-cli-linux-amd64.tar.gz"
      sha256 "42b2b5fdc99b423ec9abadd42d1d85d3f47558f8b4e536dbf6d1b6b2d13f8a1f"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end

class BatchjobCli < Formula
  desc "Developer CLI for hosted BatchJob skills"
  homepage "https://github.com/cocovs/batchjob-agent-kit"
  version "0.1.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.12/batchjob-cli-darwin-arm64.tar.gz"
      sha256 "b3f380e187764bce1188cc4ce5abecf932903cd6e85e5c621011d8a5015ad897"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.12/batchjob-cli-darwin-amd64.tar.gz"
      sha256 "4b6765987f3c560bf1f91a2ff44e144816008dc947f658e7c3119b07ad0823a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.12/batchjob-cli-linux-arm64.tar.gz"
      sha256 "a494e472ce1ce4ac8fb87ceb88553e5b9dc3df909eb4fde30e2c57d079f43680"
    else
      url "https://github.com/cocovs/batchjob-agent-kit/releases/download/v0.1.12/batchjob-cli-linux-amd64.tar.gz"
      sha256 "c7f5fa28afde67e68a09a90ac13c22d46d87e760bc8eac79b897d25b60625692"
    end
  end

  def install
    bin.install "batchjob-cli"
  end

  test do
    assert_match "Developer CLI for hosted BatchJob skills", shell_output("#{bin}/batchjob-cli --help")
  end
end

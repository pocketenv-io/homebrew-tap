class Cli < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.7/pocketenv_v0.6.7_aarch64-apple-darwin.tar.gz"
  sha256 "52cd52a781204645a621e7064326d21a9ed342fb0c18414dcff49b9817414c7d"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.7/pocketenv_v0.6.7_x86_64-apple-darwin.tar.gz"
    sha256 "2b7293745ff0f686ec499f057166200235c2591142c46260825392ff6f71a0cb"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.7/pocketenv_v0.6.7_aarch64-apple-darwin.tar.gz"
    sha256 "52cd52a781204645a621e7064326d21a9ed342fb0c18414dcff49b9817414c7d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.7/pocketenv_v0.6.7_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f4775740f770faeba218c47a93d427bfd29f78e4261e69953a77ffa56ae9b60f"
  end

  def install
    bin.install "pocketenv"
  end
end

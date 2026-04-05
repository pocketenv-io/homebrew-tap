class Cli < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.2/pocketenv_v0.6.2_aarch64-apple-darwin.tar.gz"
  sha256 "3018df1304427086e7d51c1f876364108e05fb13c21b3b9cde7ab38b510b9fe1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.2/pocketenv_v0.6.2_x86_64-apple-darwin.tar.gz"
    sha256 "f78fa4a20c113c71ee748a537b2a0881de4b5fff257da6497bd0c68213009567"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.2/pocketenv_v0.6.2_aarch64-apple-darwin.tar.gz"
    sha256 "3018df1304427086e7d51c1f876364108e05fb13c21b3b9cde7ab38b510b9fe1"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.2/pocketenv_v0.6.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b2b92dfd31f84b208ab22035e47e43ffd78ad2ab204ef6027ac6d0d9fdb102ed"
  end

  def install
    bin.install "pocketenv"
  end
end

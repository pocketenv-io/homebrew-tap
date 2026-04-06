class Cli < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.4/pocketenv_v0.6.4_aarch64-apple-darwin.tar.gz"
  sha256 "9ab582aae5b85083478632a83e9136fbfead9b2a2f237df1a7add2e78ca8da7b"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.4/pocketenv_v0.6.4_x86_64-apple-darwin.tar.gz"
    sha256 "d223b73035208e2d3ce3d5c3d97daaf980267c509b02f04db28296d8e018c141"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.4/pocketenv_v0.6.4_aarch64-apple-darwin.tar.gz"
    sha256 "9ab582aae5b85083478632a83e9136fbfead9b2a2f237df1a7add2e78ca8da7b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.4/pocketenv_v0.6.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e1cd30d8cbe9442b42277ebca2e361c6e5e66b5dcb072cc344a603f56c5dc7df"
  end

  def install
    bin.install "pocketenv"
  end
end

class Pocketenv < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.2.4/pocketenv_v0.2.4_aarch64-apple-darwin.tar.gz"
  sha256 "d9be99b5a698ebb5a8d63f0d9194a3c2477bbc5d281555f0a1bedeba02068517"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.2.4/pocketenv_v0.2.4_x86_64-apple-darwin.tar.gz"
    sha256 "e355e67cf47e3833acb2daed7ec139f57b5d92c9788cc34337130ba094c2cc26"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.2.4/pocketenv_v0.2.4_aarch64-apple-darwin.tar.gz"
    sha256 "d9be99b5a698ebb5a8d63f0d9194a3c2477bbc5d281555f0a1bedeba02068517"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.2.4/pocketenv_v0.2.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e3ba2edff6802799d35f71624b9ca4ec0beb877546e7ad2727c458f8c93b1ec7"
  end

  def install
    bin.install "pocketenv"
  end
end

class Cli < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.0/pocketenv_v0.3.0_aarch64-apple-darwin.tar.gz"
  sha256 "326468c5a3735de6eb3fb9343ebc97b0e2185e0a8d84ba32f88784331ee01602"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.0/pocketenv_v0.3.0_x86_64-apple-darwin.tar.gz"
    sha256 "6e30d8f5d896557f5cc833e12ae135bc1420af354e7c21aeb3a0cabc43ce30b2"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.0/pocketenv_v0.3.0_aarch64-apple-darwin.tar.gz"
    sha256 "326468c5a3735de6eb3fb9343ebc97b0e2185e0a8d84ba32f88784331ee01602"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.0/pocketenv_v0.3.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1e0eeb6aa7377cb0e18f03fe81a17b40a39e6675dbff7751458e7479c8df7686"
  end

  def install
    bin.install "pocketenv"
  end
end

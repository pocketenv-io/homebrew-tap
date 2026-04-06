class Pocketenv < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.8/pocketenv_v0.6.8_aarch64-apple-darwin.tar.gz"
  sha256 "c14a876b7adfed18efe97456040e247b511b4a2116c9abfe0c553a17233e4c0a"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.8/pocketenv_v0.6.8_x86_64-apple-darwin.tar.gz"
    sha256 "e28932ec85376b1c3830f3deb69a6294187da5934586b4874bb9d56bacb3b760"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.8/pocketenv_v0.6.8_aarch64-apple-darwin.tar.gz"
    sha256 "c14a876b7adfed18efe97456040e247b511b4a2116c9abfe0c553a17233e4c0a"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.8/pocketenv_v0.6.8_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6f4f66208dff3d7e67636269eefd1b0dce5eb2f07e6247aeb933e78b2a5794e8"
  end

  def install
    bin.install "pocketenv"
  end
end

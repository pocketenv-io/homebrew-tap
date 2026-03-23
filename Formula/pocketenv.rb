class Pocketenv < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.3/pocketenv_v0.3.3_aarch64-apple-darwin.tar.gz"
  sha256 "a6904669ff24a6b19f1c6f07bee47c61f5f97b724909efb9bf54b45f00497645"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.3/pocketenv_v0.3.3_x86_64-apple-darwin.tar.gz"
    sha256 "327c03444af03712f20da1b3d4839dccfc7959280770fc35a273810c42a2b717"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.3/pocketenv_v0.3.3_aarch64-apple-darwin.tar.gz"
    sha256 "a6904669ff24a6b19f1c6f07bee47c61f5f97b724909efb9bf54b45f00497645"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.3/pocketenv_v0.3.3_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b17db0714f00cbdd327d2a857b2bc884980049f153cd43589a2d75036398c418"
  end

  def install
    bin.install "pocketenv"
  end
end

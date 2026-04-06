class Pocketenv < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.6/pocketenv_v0.6.6_aarch64-apple-darwin.tar.gz"
  sha256 "2887a8b2eae5304923613d3b17496f92b996dc58542f8ddc7c98f369f6d36d30"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.6/pocketenv_v0.6.6_x86_64-apple-darwin.tar.gz"
    sha256 "013b43fa9fcb4fbc61339919eba8dc16c1ff0b2c5b65bf2734dcf1028da8b549"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.6/pocketenv_v0.6.6_aarch64-apple-darwin.tar.gz"
    sha256 "2887a8b2eae5304923613d3b17496f92b996dc58542f8ddc7c98f369f6d36d30"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.6/pocketenv_v0.6.6_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "093200394d2c845edd0d8600d6bcbdc66da1e800b79ba419d6143a25252c7cb6"
  end

  def install
    bin.install "pocketenv"
  end
end

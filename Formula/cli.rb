class Cli < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.4/pocketenv_v0.3.4_aarch64-apple-darwin.tar.gz"
  sha256 "4a58133ac670b0481b841d24124203ac23e35ac036a396389106026da071452c"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.4/pocketenv_v0.3.4_x86_64-apple-darwin.tar.gz"
    sha256 "a00e8c3c72dd489cb9da821fbbe7062653b7d21496807d5980022810cfc5a870"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.4/pocketenv_v0.3.4_aarch64-apple-darwin.tar.gz"
    sha256 "4a58133ac670b0481b841d24124203ac23e35ac036a396389106026da071452c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.4/pocketenv_v0.3.4_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "817a16d0127edc14abe54ff4ee8e630caee7396bee0fa76716be5d86feb0ccda"
  end

  def install
    bin.install "pocketenv"
  end
end

class Cli < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.1/pocketenv_v0.6.1_aarch64-apple-darwin.tar.gz"
  sha256 "031a64eccb76becaa8917a31a7b648b175e8a000de893af401b105840f230f04"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.1/pocketenv_v0.6.1_x86_64-apple-darwin.tar.gz"
    sha256 "d4ea0556eb4290cd4e811ba14290c1d1ca7abe692999e25df8df0eb3717a5e75"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.1/pocketenv_v0.6.1_aarch64-apple-darwin.tar.gz"
    sha256 "031a64eccb76becaa8917a31a7b648b175e8a000de893af401b105840f230f04"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.1/pocketenv_v0.6.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "280146e5881b4cb9896dd370480e64413398a52bac02b3378d0dc1635586c7a3"
  end

  def install
    bin.install "pocketenv"
  end
end

class Pocketenv < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.9/pocketenv_v0.6.9_aarch64-apple-darwin.tar.gz"
  sha256 "f04063ec997d056dfb170e8a95ed170991b3490fc6889e7b008f25a93bd8d5f3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.9/pocketenv_v0.6.9_x86_64-apple-darwin.tar.gz"
    sha256 "b2877bfa9de49a3a25efa30cf25fe25fe8fb57494c3c8b8de97a5985bc831f7d"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.9/pocketenv_v0.6.9_aarch64-apple-darwin.tar.gz"
    sha256 "f04063ec997d056dfb170e8a95ed170991b3490fc6889e7b008f25a93bd8d5f3"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.9/pocketenv_v0.6.9_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9d4428f9c3e1e73fe70060f0da408d04ccad0b88a87236c2ac52d166b5b8219c"
  end

  def install
    bin.install "pocketenv"
  end
end

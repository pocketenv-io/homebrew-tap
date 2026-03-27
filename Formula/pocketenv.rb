class Pocketenv < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.5/pocketenv_v0.3.5_aarch64-apple-darwin.tar.gz"
  sha256 "c688322e2455cf45f32b5bb6ad1ac22ededc657bd41a1c0cb0710bc1f7b7c732"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.5/pocketenv_v0.3.5_x86_64-apple-darwin.tar.gz"
    sha256 "bade3629de4a1d34861d1c12623a387a85e0c1a9c4c55d6b8a49476811ffc4ad"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.5/pocketenv_v0.3.5_aarch64-apple-darwin.tar.gz"
    sha256 "c688322e2455cf45f32b5bb6ad1ac22ededc657bd41a1c0cb0710bc1f7b7c732"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.5/pocketenv_v0.3.5_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0c2bb96d7c6dbf5d2090815496cd1b0ce95e088e0cea9deb8be6e33ddfb9d13c"
  end

  def install
    bin.install "pocketenv"
  end
end

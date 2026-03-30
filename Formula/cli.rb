class Cli < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.5.0/pocketenv_v0.5.0_aarch64-apple-darwin.tar.gz"
  sha256 "7d114cbd4e22b25897bfb277342cca40ecf6b9d4fc2eec80ae7859343697b3cd"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.5.0/pocketenv_v0.5.0_x86_64-apple-darwin.tar.gz"
    sha256 "6e5921cbd1451d0d0d614ad262227d52c714c342812d4a46a06b48a76263f951"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.5.0/pocketenv_v0.5.0_aarch64-apple-darwin.tar.gz"
    sha256 "7d114cbd4e22b25897bfb277342cca40ecf6b9d4fc2eec80ae7859343697b3cd"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.5.0/pocketenv_v0.5.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "621afa78282021e5e9dc7f802adb98961d39153e626ec45a4dfea99be05c6f61"
  end

  def install
    bin.install "pocketenv"
  end
end

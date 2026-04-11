class Cli < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.7.0/pocketenv_v0.7.0_aarch64-apple-darwin.tar.gz"
  sha256 "48041f31cdd8231277ba74edc7f9a7dbc5ef4a30e38c80e5bb4449d5c7984c5d"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.7.0/pocketenv_v0.7.0_x86_64-apple-darwin.tar.gz"
    sha256 "1cfa3eddfc121d99b538411b2f4a5990f3a7cc835c0a89c45d70af800c2db1ae"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.7.0/pocketenv_v0.7.0_aarch64-apple-darwin.tar.gz"
    sha256 "48041f31cdd8231277ba74edc7f9a7dbc5ef4a30e38c80e5bb4449d5c7984c5d"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.7.0/pocketenv_v0.7.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3ed0cc6e7f6f2340cb88c2e179b961b2c624bf135303b3243d1385e4e55314fb"
  end

  def install
    bin.install "pocketenv"
  end
end

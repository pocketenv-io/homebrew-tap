class Cli < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.4.0/pocketenv_v0.4.0_aarch64-apple-darwin.tar.gz"
  sha256 "2c421d69e97190b974c40650f129ca6cf6c179dc698d881918063a7640f49d31"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.4.0/pocketenv_v0.4.0_x86_64-apple-darwin.tar.gz"
    sha256 "84117518339c886ac02af7877691373faeaf8d391464176bd7e9dbaab0421e02"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.4.0/pocketenv_v0.4.0_aarch64-apple-darwin.tar.gz"
    sha256 "2c421d69e97190b974c40650f129ca6cf6c179dc698d881918063a7640f49d31"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.4.0/pocketenv_v0.4.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9e87ce10ca146be898c21e2069f6199d8862fde54cd0e48a443bcd233f177d89"
  end

  def install
    bin.install "pocketenv"
  end
end

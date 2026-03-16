class Cli < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.2.2/pocketenv_v0.2.2_aarch64-apple-darwin.tar.gz"
  sha256 "d05ee85e9b9a0ae4c66016c49715d2934bc718580e02f1f3f8140e814f6e7971"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.2.2/pocketenv_v0.2.2_x86_64-apple-darwin.tar.gz"
    sha256 "5b34d10a8083397c8a67cbee41a73ce332733663e2e07ab6527817c6412b3996"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.2.2/pocketenv_v0.2.2_aarch64-apple-darwin.tar.gz"
    sha256 "d05ee85e9b9a0ae4c66016c49715d2934bc718580e02f1f3f8140e814f6e7971"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.2.2/pocketenv_v0.2.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7afffeae12c8372091f0dbf2624b5aaa898cbf72a004d4a05259986dccc19395"
  end

  def install
    bin.install "pocketenv"
  end
end

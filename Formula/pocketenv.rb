class Pocketenv < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.3/pocketenv_v0.6.3_aarch64-apple-darwin.tar.gz"
  sha256 "8f98f9ecede591c9907cb9400f5074038fd51dfd3f38228eb671f18d26102ef0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.3/pocketenv_v0.6.3_x86_64-apple-darwin.tar.gz"
    sha256 "1e40655acde3a5585aa25e876c1273bd679a004ab541aa040f593a0ed46cf803"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.3/pocketenv_v0.6.3_aarch64-apple-darwin.tar.gz"
    sha256 "8f98f9ecede591c9907cb9400f5074038fd51dfd3f38228eb671f18d26102ef0"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.3/pocketenv_v0.6.3_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1993fcac202b9aa35e940d2b78c24e4697ddbbeeeb830c19fb0d2111303e337d"
  end

  def install
    bin.install "pocketenv"
  end
end

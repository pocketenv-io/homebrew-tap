class Cli < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.0/pocketenv_v0.6.0_aarch64-apple-darwin.tar.gz"
  sha256 "5a4bd262db71e59eccb057c227b9a00239807145bd02429769808f3d83949400"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.0/pocketenv_v0.6.0_x86_64-apple-darwin.tar.gz"
    sha256 "94fd43ff34b606a22bfdb523e5da050b1d540c016fb11c2428c6250cf018482f"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.0/pocketenv_v0.6.0_aarch64-apple-darwin.tar.gz"
    sha256 "5a4bd262db71e59eccb057c227b9a00239807145bd02429769808f3d83949400"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.6.0/pocketenv_v0.6.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5f34ae2361e698c7053da1b78b1029898ffff53950b8baf3bb78df79c9d12e12"
  end

  def install
    bin.install "pocketenv"
  end
end

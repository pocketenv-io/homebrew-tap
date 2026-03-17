class Cli < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.2.5/pocketenv_v0.2.5_aarch64-apple-darwin.tar.gz"
  sha256 "26d2cf1c82fb353e08218e20812bbcfac5baabf7ddc984d44942e787035e320b"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.2.5/pocketenv_v0.2.5_x86_64-apple-darwin.tar.gz"
    sha256 "fe82023a1805da5b2640ce1d2293469c18e8be934ac316f43b8bd7e60886ec02"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.2.5/pocketenv_v0.2.5_aarch64-apple-darwin.tar.gz"
    sha256 "26d2cf1c82fb353e08218e20812bbcfac5baabf7ddc984d44942e787035e320b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.2.5/pocketenv_v0.2.5_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2e50bb5836eadbf00f5ed45d470c24a3f0f85969e3f893c812c88573b8c7d8ef"
  end

  def install
    bin.install "pocketenv"
  end
end

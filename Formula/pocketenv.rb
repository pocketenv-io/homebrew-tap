class Pocketenv < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.1/pocketenv_v0.3.1_aarch64-apple-darwin.tar.gz"
  sha256 "fc09f10b1f8dc439ba10de591c4cc2689d237e7766a9386e0e578a030fd0b873"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.1/pocketenv_v0.3.1_x86_64-apple-darwin.tar.gz"
    sha256 "8abbd9057476ca074ecde83f79be319d9f5f270164a4e547d10f985ab4ec9810"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.1/pocketenv_v0.3.1_aarch64-apple-darwin.tar.gz"
    sha256 "fc09f10b1f8dc439ba10de591c4cc2689d237e7766a9386e0e578a030fd0b873"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.1/pocketenv_v0.3.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "b08e2a543477d902053eb705130f14a0616c133266e7c067151cc2c2a8274e8a"
  end

  def install
    bin.install "pocketenv"
  end
end

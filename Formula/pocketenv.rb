class Pocketenv < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.7.1/pocketenv_v0.7.1_aarch64-apple-darwin.tar.gz"
  sha256 "6531d03e3c273cdcc20c08f99c9f2fc1204ae6438048f8e0c8dbc749c3878e88"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.7.1/pocketenv_v0.7.1_x86_64-apple-darwin.tar.gz"
    sha256 "7a59756010b4401ccf118617335d84d0b03899782ed0d414d58d154f669b5522"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.7.1/pocketenv_v0.7.1_aarch64-apple-darwin.tar.gz"
    sha256 "6531d03e3c273cdcc20c08f99c9f2fc1204ae6438048f8e0c8dbc749c3878e88"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.7.1/pocketenv_v0.7.1_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "89aab66b7ad7b2210d69f42eede31400592883a06c018fb0b81f5ac698be314b"
  end

  def install
    bin.install "pocketenv"
  end
end

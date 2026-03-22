class Cli < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.2/pocketenv_v0.3.2_aarch64-apple-darwin.tar.gz"
  sha256 "192d7c4113c0f6daf76175735634beba0afc8b719257cabc6ca2a671cf71a3fb"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.2/pocketenv_v0.3.2_x86_64-apple-darwin.tar.gz"
    sha256 "0d41765c6a8707a731b0c6fa5059d6117035382d63454368e9d39b6ad5993e16"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.2/pocketenv_v0.3.2_aarch64-apple-darwin.tar.gz"
    sha256 "192d7c4113c0f6daf76175735634beba0afc8b719257cabc6ca2a671cf71a3fb"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.3.2/pocketenv_v0.3.2_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "93fe7e42b872c9991692926a3756297886af89b272a45c54f68926399f721753"
  end

  def install
    bin.install "pocketenv"
  end
end

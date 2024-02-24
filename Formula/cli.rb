class Cli < Formula
  desc "Manage your development environment with ease ✨"
  homepage "https://github.com/pocketenv-io/pocketenv"
  url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.1.0/pocketenv_v0.1.0_aarch64-apple-darwin.tar.gz"
  sha256 "8ee394de41e449577becf081dbdb8a7da5e49b97f99739730c4a3813347a04fe"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.1.0/pocketenv_v0.1.0_x86_64-apple-darwin.tar.gz"
    sha256 "73f976fa3be6723adcd19804e6f635b596eec73420aabaf1032e58e20dd70446"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.1.0/pocketenv_v0.1.0_aarch64-apple-darwin.tar.gz"
    sha256 "8ee394de41e449577becf081dbdb8a7da5e49b97f99739730c4a3813347a04fe"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/pocketenv-io/pocketenv/releases/download/v0.1.0/pocketenv_v0.1.0_x86_64-unknown-linux-gnu.tar.gz"
    sha256 "54fc119491b1bf9415233d13f266224350db6469361f9c8a36e1dabea5cb37cd"
  end

  def install
    bin.install "pocketenv"
  end
end
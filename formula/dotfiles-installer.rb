class DotfilesInstaller < Formula
  desc "Short description of your project"
  homepage "https://github.com/Mephisto-Grumpy/dotfiles-installer"
  url "https://github.com/Mephisto-Grumpy/dotfiles-installer/archive/v1.0.0.tar.gz"
  sha256 "add_checksum_here"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "dotfiles-installer"
  end

  test do
    system "#{bin}/dotfiles-installer", "--version"
  end
end

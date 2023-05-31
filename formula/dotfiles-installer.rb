class DotfilesInstaller < Formula
  desc "Clones a github repo and creates symbolic links"
  homepage "https://github.com/Mephisto-Grumpy/d  otfiles-installer"
  version "1.1.1"
  license "MIT"

  if OS.mac?
    url "https://github.com/Mephisto-Grumpy/dotfiles-installer/releases/download/#{version}/dotfiles-installer-darwin-amd64"
    sha256 "1ca131a5e270ef99cc6d5cb05fcef660e7c10b23e50a6fb95a94d18867819136"
  else
    url "https://github.com/Mephisto-Grumpy/dotfiles-installer/releases/download/#{version}/dotfiles-installer-linux-amd64"
    sha256 "8fea4fcb52a54158acdb7d55e279b29aa7aa1161740246fb9226f347675b9ee0"
  end

  def install
    if OS.mac?
      bin.install "dotfiles-installer-darwin-amd64" => "dotfiles-installer"
    else
      bin.install "dotfiles-installer-linux-amd64" => "dotfiles-installer"
    end
  end

  test do
    assert_match "Version:", shell_output("#{bin}/dotfiles-installer --version")
  end
end

class Mlynx < Formula
  desc "MANAN LYNX – Enhanced CLI Search Tool for macOS/Linux"
  homepage "https://github.com/mbhasin-stgi/homebrew-mlynx.git"
  url "https://github.com/mbhasin-stgi/homebrew-mlynx/releases/download/v1.0.0/mlynx.tar.gz"
  sha256 "39729a80bda15b9906d957e381242a249ba2c6ace433cce498c9c4644533f5af"
  version "1.0.0"

  def install
    bin.install "mlynx"
  end
end

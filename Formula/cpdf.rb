class Cpdf < Formula
  desc "Coherent PDF Command-line Tools to modify PDF files"
  homepage "https://community.coherentpdf.com/"
  url "https://github.com/coherentgraphics/cpdf-binaries/raw/v2.6.1/OSX-ARM/cpdf"
  version "2.6.1"
  sha256 "015b83624ecb30bbee8b3b8c4e7b6badeb17abbdcf08e869999cdf906d9636f0"

  def install
    bin.install "cpdf"
  end

  test do
    system "#{bin}/cpdf", "-version"
  end
end
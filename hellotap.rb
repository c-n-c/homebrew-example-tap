# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Hellotap < Formula
  desc "Installation of demo hellotap"
  homepage "https://abcdbank.com/"
  url "http://127.0.0.1/artifactory/release/hellotap.zip"
  version "58"
  sha256 "b9a6b0bcaacddf8f5936f29f78a4259d4f5762bbbf4b1f4a25887bea51eca55c"

  bottle :unneeded

  # depends_on "cmake" => :build

  def install
    prefix.install "testfile.txt"
    system "bash", "install.sh"
    system "make", "install"
  end

  test do
    assert_equal version, shell_output("cat #{prefix}/testfile.txt")
  end
end

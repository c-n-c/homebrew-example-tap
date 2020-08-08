# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Hellotap < Formula
  desc "Installation of demo hellotap"
  homepage "https://abcdbank.com/"
  url "http://127.0.0.1/artifactory/release/hellotap.zip"
  version "63"
  sha256 "6d1365a468d0aaac785dc795e1a7d02ca0c82fca0f0733ad79a03e0f9fed9e64"

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

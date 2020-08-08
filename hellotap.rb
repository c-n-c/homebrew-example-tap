# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Hellotap < Formula
  desc "Installation of demo hellotap"
  homepage "https://abcdbank.com/"
  url "http://127.0.0.1/artifactory/release/hellotap.zip"
  version "60"
  sha256 "500d12628376015c7caed7443858e33f323c06264d81f844486eaa3c05083df9"

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

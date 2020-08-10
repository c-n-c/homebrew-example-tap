# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Hellotap < Formula
  desc "Installation of demo hellotap"
  homepage "https://abcdbank.com/"
  url "http://127.0.0.1/artifactory/release/hellotap.zip"
  version "70"
  sha256 "7479c18ffd22142ddf61b572b54cd6b5c24775809f3b9fedc1b87cb468b84e80"

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

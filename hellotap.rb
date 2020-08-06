# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Hellotap < Formula
  desc "Installation of demo hellotap"
  homepage "https://abcdbank.com/"
  url "http://10.1.5.86/artifactory/test/hellotap.zip"
  version "12"
  sha256 "6d2b2c99d44bf6efd0eea9e9d63f04d395900543a715859839de18e896aa8009"

  bottle :unneeded

  # depends_on "cmake" => :build

  def install
    prefix.install "testfile.txt"
    system "bash", "install.sh"
    system "make", "install"
  end

  # test do
  #   # `test do` will create, run in and delete a temporary directory.
  #   #
  #   # This test will fail and we won't accept that! For Homebrew/homebrew-core
  #   # this will need to be a test that verifies the functionality of the
  #   # software. Run the test with `brew test certs`. Options passed
  #   # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
  #   #
  #   # The installed folder is not in the path, so use the entire path to any
  #   # executables being tested: `system "#{bin}/program", "do", "something"`.
  #   system "false"
  # end
end

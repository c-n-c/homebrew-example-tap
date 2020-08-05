# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Certs < Formula
  desc "Installation of IDFC hellotap"
  homepage "https://idfcbank.com/"
  url "http://localhost:8082/artifactory/test/hellotap.zip"
  version "1.0"
  sha256 "d5aa9e14f92922eddf1a3803f4227660717ff65804d88d2656aec690b638b05a"

  bottle :unneeded

  # depends_on "cmake" => :build

  def install
    chmod 0644, "cert.pem"
    system "bash", "--debug", "installer.sh"
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

# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula

class Hellotap < Formula
  desc "Installation of demo hellotap"
  homepage "https://abcdbank.com/"
  url "http://127.0.0.1/artifactory/release/hellotap.zip"
  version "71"
  sha256 "40669fd4ea868506985ccf6cc84f0b4daee68d46eb3f857e41f220ad2f951833"

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

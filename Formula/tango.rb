# This file was generated by GoReleaser. DO NOT EDIT.
class Tango < Formula
  desc "Tango is a command-line tool for dancing with access logs"
  homepage "https://github.com/roma-glushko/tango"
  version "1.0.2-rc1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/roma-glushko/tango/releases/download/1.0.2-rc1/tango_1.0.2-rc1_macOS_64-bit.zip"
    sha256 "79a23ead6e8ab7088ff2842cbb24999431bffa8efcbbd2c4f1a252234b820e1f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/roma-glushko/tango/releases/download/1.0.2-rc1/tango_1.0.2-rc1_Linux_64-bit.zip"
      sha256 "3a98db0a0222b627eca078f9f1c41b022adf1071ab17cec2d4e9a1b41edf71ed"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/roma-glushko/tango/releases/download/1.0.2-rc1/tango_1.0.2-rc1_Linux_arm64.zip"
        sha256 "2cbc5f4c1c43abe3892f1d780152eaf6c7fa35736b93911cb5eaf75541e0dbef"
      else
        url "https://github.com/roma-glushko/tango/releases/download/1.0.2-rc1/tango_1.0.2-rc1_Linux_armv6.zip"
        sha256 "85ce2f410ecf20b304905d6b3959df4c007214b056ab7e9c6d441ab71e4e475c"
      end
    end
  end
  
  head "https://github.com/roma-glushko/tango.git"

  def install
    bin.install "tango"
  end

  def caveats; <<~EOS
    Tango is on the scene 🎉 Type `tango --help` to get started 💃💃💃
  EOS
  end

  test do
    system "#{bin}/tango --version"
  end
end

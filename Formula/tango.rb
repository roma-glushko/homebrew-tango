# This file was generated by GoReleaser. DO NOT EDIT.
class Tango < Formula
  desc "Tango is a command-line tool for dancing with access logs"
  homepage "https://github.com/roma-glushko/tango"
  version "1.0.3-rc2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/roma-glushko/tango/releases/download/1.0.3-rc2/tango_1.0.3-rc2_macOS_64-bit.zip"
    sha256 "7f5b7f5cb5dea6a1a8321bfad872b3fd19d0b0d41103a4cfe6ef1a0879fff291"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/roma-glushko/tango/releases/download/1.0.3-rc2/tango_1.0.3-rc2_Linux_64-bit.zip"
      sha256 "f833e19e099e4e8648d8a3534878f8731b881c78b144d4b189100ea95db5d0cc"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/roma-glushko/tango/releases/download/1.0.3-rc2/tango_1.0.3-rc2_Linux_arm64.zip"
        sha256 "8673b3e254f6a3c4124ff70d37953ee6c93b10fbd2f1c3cc54652beb23f461ac"
      else
        url "https://github.com/roma-glushko/tango/releases/download/1.0.3-rc2/tango_1.0.3-rc2_Linux_armv6.zip"
        sha256 "accf563f420a63a53ef6c97fbbac12e98960843b990b595b256ad510e9edfa0d"
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

class MysqldumpSecure < Formula
  desc "Encrypted mysqldump with compression and logging"
  homepage "http://mysqldump-secure.org"
  url "https://github.com/cytopia/mysqldump-secure/archive/0.16.tar.gz"
  sha256 "38c2c2fed056be16f141b6c16a4463632d1f0b39ce2a6d7359745ad100e3e3c9"
  head "https://github.com/cytopia/mysqldump-secure.git"

  def install
    args = ["--prefix=#{prefix}",
           ]

    system "./configure", *args
    system "make"
    system "make", "reinstall"
  end

  test do
    system bin/"mysqldump-secure 2>&1 | grep ''"
  end
end

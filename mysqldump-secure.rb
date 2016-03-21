class MysqldumpSecure < Formula
  desc "Encrypted mysqldump with compression and logging"
  homepage "http://mysqldump-secure.org"
  url "https://github.com/cytopia/mysqldump-secure/archive/0.16.1.tar.gz"
  sha256 "2a8d1af508d51ff7be0ff61f9418caa14b83546b7746406877fda68ee3722947"
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

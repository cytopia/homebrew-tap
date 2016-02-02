class MysqldumpSecure < Formula
  desc "Encrypted mysqldump with compression and logging"
  homepage "https://github.com/cytopia/mysqldump-secure"
  url "https://github.com/cytopia/mysqldump-secure/archive/0.12.tar.gz"
  sha256 "df3e65a80d90eb8d285d3413871f5c8728ff32d67c939c8b1b4d5d611dd26341"
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

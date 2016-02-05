class MysqldumpSecure < Formula
  desc "Encrypted mysqldump with compression and logging"
  homepage "https://github.com/cytopia/mysqldump-secure"
  url "https://github.com/cytopia/mysqldump-secure/archive/0.15.tar.gz"
  sha256 "c90b50b07f6c30f668d4c85a8791dba805b586f9b5a0afeef39998e83658b4fb"
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

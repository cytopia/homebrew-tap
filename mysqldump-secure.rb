class MysqldumpSecure < Formula
  desc "Encrypted mysqldump with compression and logging"
  homepage "https://github.com/cytopia/mysqldump-secure"
  url "https://github.com/cytopia/mysqldump-secure/archive/0.14.1.tar.gz"
  sha256 "fcaa6019ff73f40a00acdb92797efb0ef86dba2832dfdcb55b56eb3c6bfbc13d"
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

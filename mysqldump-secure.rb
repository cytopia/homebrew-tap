class MysqldumpSecure < Formula
  desc "Encrypted mysqldump with compression and logging"
  homepage "http://mysqldump-secure.org"
  url "https://github.com/cytopia/mysqldump-secure/archive/0.16.2.tar.gz"
  sha256 "64411369a7dc2f9fb7f1548ca4ab2676ae3ea36a3a0f1e68c6f061f777b3b766"
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

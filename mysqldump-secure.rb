class MysqldumpSecure < Formula
  desc "Encrypted mysqldump with compression and logging"
  homepage "https://github.com/cytopia/mysqldump-secure"
  url "https://github.com/cytopia/mysqldump-secure/archive/0.14.tar.gz"
  sha256 "be707799fdda96f03a24e4983feab73f0c6a5c9443efcd4f131ef27574f8a4b0"
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

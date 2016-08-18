class MysqldumpSecure < Formula
  desc "Encrypted mysqldump with compression and logging"
  homepage "http://mysqldump-secure.org"
  url "https://github.com/cytopia/mysqldump-secure/archive/0.16.3.tar.gz"
  sha256 "13e9a43f0e113d8e509694def44e68c19b0c3498c4a1ef55b5a96b5e67a84a8d"
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

class AwesomeCi < Formula
  desc "Tools for git, file and static source code analysis."
  homepage "https://github.com/cytopia/awesome-ci"
  url "https://github.com/cytopia/awesome-ci/archive/0.3.tar.gz"
  sha256 "04894980abcbf1581879eed04773a21339e694b5f75c36693aa2a3c742afee45"
  head "https://github.com/cytopia/awesome-ci.git"

  def install
    args = ["--prefix=#{prefix}",
           ]

    system "./configure", *args
    system "make", "install"
  end

  test do
    system bin/"regex-grep --info || true"
  end
end

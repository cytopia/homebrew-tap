class AwesomeCi < Formula
  desc "Tools for git, file and static source code analysis."
  homepage "https://github.com/cytopia/awesome-ci"
  url "https://github.com/cytopia/awesome-ci/archive/0.6.tar.gz"
  sha256 "078ec65eab2f1c21774e037174d208d572606c0af19204880d962654e16e289b"
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

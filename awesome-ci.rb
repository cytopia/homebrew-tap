class AwesomeCi < Formula
  desc "Tools for git, file and static source code analysis."
  homepage "https://github.com/cytopia/awesome-ci"
  url "https://github.com/cytopia/awesome-ci/archive/v0.1.tar.gz"
  sha256 "bc869a94749ba34180c862885e38393666e6a07a379d5c9d6377fe118f97c2dc"
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

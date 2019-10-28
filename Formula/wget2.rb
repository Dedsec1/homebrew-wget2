class Wget2 < Formula
  desc "Multithreaded metalink/file/website downloader"
  homepage "https://gitlab.com/gnuwget/wget2/"
  url "https://gnuwget.gitlab.io/wget2/wget2-latest.tar.gz"
  sha256 "8d9b0b0897ff9623169db47c656d09007677f8d51de5f5cd3652258aab8b4dde"

  depends_on "gettext"
  depends_on "gnutls"
  depends_on "gpgme"
  depends_on "libpsl"
  depends_on "nghttp2"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system bin/"wget2", "-O", "/dev/null", "https://www.example.org/"
  end
end

# Installs the k command line interface

class K < Formula
  desc "Tool for managing the Reclaim the Stack platform"
  homepage "https://github.com/reclaim-the-stack/k"
  head "https://github.com/reclaim-the-stack/k.git"

  depends_on "boz/repo/kail"
  depends_on "kubernetes-cli"
  depends_on "kubeseal"
  depends_on "yq"

  def install
    bin.install "k"
    bin.install "k_pg_proxy"
  end

  test do
    system "#{bin}/k"
  end
end

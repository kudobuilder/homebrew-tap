# This file was generated by GoReleaser. DO NOT EDIT.
class KudoCli < Formula
  desc "Interact with KUDO via the kubectl plugin"
  homepage "https://kudo.dev"
  version "0.7.5"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kudobuilder/kudo/releases/download/v0.7.5/kudo_0.7.5_darwin_x86_64.tar.gz"
    sha256 "f29f7d435a5db79bc02618e8adb241a53cb2011e79574d681f24f71b7b05445c"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kudobuilder/kudo/releases/download/v0.7.5/kudo_0.7.5_linux_x86_64.tar.gz"
      sha256 "758b7833de4ebff39345a9f33ef8de9ccc0dcd56bd3c1bf7b5b7b1295aaeed41"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
      else
        url "https://github.com/kudobuilder/kudo/releases/download/v0.7.5/kudo_0.7.5_linux_armv6.tar.gz"
        sha256 "7a336f12da3ce2ec4507317055c5ad09b95c7a0a891f8040a0ee7968e083300b"
      end
    end
  end
  
  depends_on "kubernetes-cli"

  def install
    bin.install "kubectl-kudo"
  end
end

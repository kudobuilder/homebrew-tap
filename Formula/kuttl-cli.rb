# This file was generated by GoReleaser. DO NOT EDIT.
class KuttlCli < Formula
  desc "Interact with KUTTL via the kubectl plugin"
  homepage "https://kudo.dev"
  version "0.5.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/kudobuilder/kuttl/releases/download/v0.5.1/kuttl_0.5.1_darwin_x86_64.tar.gz"
    sha256 "93806abdab27a2df2784c92b5fe818e9e30bf771944a1cd33afc9dccf11897d4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/kudobuilder/kuttl/releases/download/v0.5.1/kuttl_0.5.1_linux_x86_64.tar.gz"
      sha256 "27070b0b99f54cbacd9afd8845b07b3a678e2dde2acb1304a3c003656e987939"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
      else
        url "https://github.com/kudobuilder/kuttl/releases/download/v0.5.1/kuttl_0.5.1_linux_armv6.tar.gz"
        sha256 "7372ec00009013e20f7a7060e865788d4da56b3012d85b82337c20ddbb4af0cc"
      end
    end
  end
  
  depends_on "kubernetes-cli"

  def install
    bin.install "kubectl-kuttl"
  end
end

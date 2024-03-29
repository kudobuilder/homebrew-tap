# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KuttlCli < Formula
  desc "Interact with KUTTL via the kubectl plugin"
  homepage "https://kuttl.dev"
  version "0.15.0"

  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kudobuilder/kuttl/releases/download/v0.15.0/kuttl_0.15.0_darwin_arm64.tar.gz"
      sha256 "8751eba6ffc630655f016fc352fce2f4de932d56f64bf7609da2066c4edf65a4"

      def install
        bin.install "kubectl-kuttl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kudobuilder/kuttl/releases/download/v0.15.0/kuttl_0.15.0_darwin_x86_64.tar.gz"
      sha256 "9913b357d56393c4bfe92e0fa0709d48692ad38d29b8452f551051bee7238980"

      def install
        bin.install "kubectl-kuttl"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/kudobuilder/kuttl/releases/download/v0.15.0/kuttl_0.15.0_linux_armv6.tar.gz"
      sha256 "17338941723848d2d21e5efef2249e385ae34317148f911243328ddb8448bbe8"

      def install
        bin.install "kubectl-kuttl"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kudobuilder/kuttl/releases/download/v0.15.0/kuttl_0.15.0_linux_arm64.tar.gz"
      sha256 "7173d7abd0e163090522e1229f175ab80400f85060e74f7ea9cc38abf6c23120"

      def install
        bin.install "kubectl-kuttl"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kudobuilder/kuttl/releases/download/v0.15.0/kuttl_0.15.0_linux_x86_64.tar.gz"
      sha256 "02f124b6a43376864fdf0a195e6c56dbb1b41defac58587f0f941a1defb18fbf"

      def install
        bin.install "kubectl-kuttl"
      end
    end
  end
end

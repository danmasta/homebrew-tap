class Envstr < Formula

    desc "Envstr"
    homepage "https://github.com/danmasta/envstr"
    version "0.0.1"
    @file = "envstr"

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/danmasta/envstr/releases/download/v0.0.1/envstr-linux-x64"
        sha256 "83b512b6f74bc4c375b9a5ca7998c8de66013b549c1e5776baccacf589883b88"
        @file = "envstr-linux-x64"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/danmasta/envstr/releases/download/v0.0.1/envstr-linux-arm64"
        sha256 "ecfc7a4e7e1175e7555cef4723a373d727e6374b2dcf66dfd00eefe1233b1880"
        @file = "envstr-linux-arm64"
    end

    if OS.mac?
        url "https://github.com/danmasta/envstr/releases/download/v0.0.1/envstr-darwin"
        sha256 "b48e1de1b9705af4fa0cfed1550c98a8060d8fb9a8a161d0c69821c2325f97c3"
        @file = "envstr-darwin"
    end

    conflicts_with "envstr"

    def install
        bin.install "#{@file}" => "envstr"
    end

    test do
        system "#{bin}/envstr -v"
    end

end

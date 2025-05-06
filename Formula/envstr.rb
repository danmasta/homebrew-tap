class Envstr < Formula

    desc "Envstr"
    homepage "https://github.com/danmasta/envstr"
    version "0.0.1"
    @@file = "envstr"

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/danmasta/envstr/releases/download/v#{version}/envstr-linux-x64"
        sha256 "bd41e5f9b2301ac2913f6f322bd3b32f42e8e70eccc7258a8707d37b1c09c774"
        @@file = "envstr-linux-x64"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/danmasta/envstr/releases/download/v#{version}/envstr-linux-arm64"
        sha256 "f51aa7e26f7cc85c5fe3770054692b328fef9f6fc0e857efd8705927aa78a9bd"
        @@file = "envstr-linux-arm64"
    end

    if OS.mac?
        url "https://github.com/danmasta/envstr/releases/download/v#{version}/envstr-darwin"
        sha256 "5e6ce08fc49c97cf91b92b57befe8ef898964331bb5984c0924a16a252fe4a7b"
        @@file = "envstr-darwin"
    end

    conflicts_with "envstr"

    def install
        bin.install "#{@@file}" => "envstr"
    end

    test do
        system "#{bin}/envstr -v"
    end

end

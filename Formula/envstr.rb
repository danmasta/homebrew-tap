class Envstr < Formula

    desc "Envstr"
    homepage "https://github.com/danmasta/envstr"
    version "1.0.0"
    @@file = "envstr"

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/danmasta/envstr/releases/download/v#{version}/envstr-linux-x64"
        sha256 "d769f16f7fad3e4cc06284ee5b00281a392955975aa2fdee979cdc6c4dc0720b"
        @@file = "envstr-linux-x64"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/danmasta/envstr/releases/download/v#{version}/envstr-linux-arm64"
        sha256 "603a40d6038bf66070a9c7a13242629a16cd76e275d7282b8bcdbf82526d36f1"
        @@file = "envstr-linux-arm64"
    end

    if OS.mac?
        url "https://github.com/danmasta/envstr/releases/download/v#{version}/envstr-darwin"
        sha256 "2f3d14b5c0d9897ca8c284d2c8ba3673634719ecc113bb144ec9fff57132d025"
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

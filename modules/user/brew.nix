{ username, ... }:
{
  homebrew = {
    enable = true;
    user = username;

    taps = [
        "anomalyco/tap"
        "edouard-claude/tap"
        "farion1231/ccswitch"
        "oven-sh/bun"
        "terror/tap"
    ];

    onActivation = {
      cleanup = "zap";
      autoUpdate = false;
      upgrade = true;
    };

    brews = [
        "buf"
        "libpq"
        "clang-format"
        "cmake"
        "flac"
        "gcc"
        "gnupg"
        "go"
        "golangci-lint"
        "grpcui"
        "libuv"
        "libvorbis"
        "ruff"
        "mas"
        "ninja"
        "nvm"
        "openjdk@21"
        "pkgconf"
        "portaudio"
        "protobuf"
        "protolint"
        "pyrefly"
        "qt5compat"
        "qt"
        "semgrep"
        "tmux"
        "zlib"
        "anomalyco/tap/opencode"
        "oven-sh/bun/bun"
        "terror/tap/just-lsp"
        "typester/ranma/ranma"
        "typester/reap/reap"
        "yvgude/lean-ctx/lean-ctx"
    ];

    casks = [
        "farion1231/ccswitch/cc-switch"
        "font-hack-nerd-font"
        "font-iosevka-charon"
        "typester/yashiki/yashiki"
        "font-iosevka-charon-mono"
        "pearcleaner"
        "wireshark-app"
        "edouard-claude/tap/snip"
        "thaw@beta"
        "mitmproxy"
        "zoom"
        "spotify"
        "zen"
    ];

    masApps = {
      Xcode = 497799835;
      Amphetamine = 937984704;
    };

    goPackages = [
        "github.com/googleapis/api-linter/cmd/api-linter"
        "github.com/go-delve/delve/cmd/dlv"
        "mvdan.cc/gofumpt"
        "github.com/golangci/golangci-lint/v2/cmd/golangci-lint"
        "golang.org/x/tools/gopls"
        "github.com/cweill/gotests/gotests"
        "github.com/josharian/impl"
        "google.golang.org/protobuf/cmd/protoc-gen-go"
        "google.golang.org/grpc/cmd/protoc-gen-go-grpc"
        "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-grpc-gateway"
        "github.com/grpc-ecosystem/grpc-gateway/v2/protoc-gen-openapiv2"
    ];

    enableZshIntegration = true;
  };
}

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

    brews = [
        "clang-format"
        "cmake"
        "flac"
        "gnupg"
        "go"
        "golangci-lint"
        "grpcui"
        "libuv"
        "libvorbis"
        "mas"
        "ninja"
        "node"
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
    ];
    casks = [
        "farion1231/ccswitch/cc-switch"
        "claude-code"
        "font-iosevka-charon"
        "font-iosevka-charon-mono"
        "insomnia"
        "pearcleaner"
        "edouard-claude/tap/snip"
        "thaw@beta"
        "zen"
    ];

    masApps = {
      Xcode = 497799835;
      Amphetamine = 937984704;
    };
  };
}

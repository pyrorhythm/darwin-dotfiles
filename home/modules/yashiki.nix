{ ... }:
{
  xdg.configFile."yashiki/init" = {
    executable = true;
    text = ''
      #!/bin/sh

      # Layout
      yashiki layout-set-default tatami
      yashiki set-outer-gap 10
      yashiki layout-cmd --layout tatami set-inner-gap 10

      # Cursor warp
      yashiki set-cursor-warp on-focus-change

      # Tag bindings
      for i in 1 2 3 4 5 6 7 8 9; do
        yashiki bind "alt-$i"       tag-view          "$((1<<(i-1)))"
        yashiki bind "alt-shift-$i" window-move-to-tag "$((1<<(i-1)))"
      done

      # Window focus / layout ratio
      yashiki bind alt-j window-focus next
      yashiki bind alt-k window-focus prev
      yashiki bind alt-h layout-cmd dec-main-ratio
      yashiki bind alt-l layout-cmd inc-main-ratio

      # Multi-monitor
      yashiki bind alt-o       output-focus next
      yashiki bind alt-shift-o output-send  next

      yashiki exec --track "ranma-server start --init $(brew --prefix)/share/ranma/examples/yashiki-workspace/init"
    '';
  };
}

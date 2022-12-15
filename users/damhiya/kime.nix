{ ... }: {
  home.file.kime-config = {
    target = ".config/kime/config.yaml";
    text = ''
      ---
      daemon:
        modules:
          - Xim
          - Wayland
          - Indicator
      indicator:
        icon_color: Black
      engine:
        default_category: Latin
        global_category_state: false
        global_hotkeys:
          Super-Backslash:
            behavior:
              Mode: Math
            result: ConsumeIfProcessed
          Super-Space:
            behavior:
              Toggle:
                - Hangul
                - Latin
            result: Consume
          Super-C-E:
            behavior:
              Mode: Emoji
            result: ConsumeIfProcessed
          Esc:
            behavior:
              Switch: Latin
            result: Bypass
          Muhenkan:
            behavior:
              Toggle:
                - Hangul
                - Latin
            result: Consume
          Hangul:
            behavior:
              Toggle:
                - Hangul
                - Latin
            result: Consume
        category_hotkeys:
          Hangul:
            ControlR:
              behavior:
                Mode: Hanja
              result: Consume
            HangulHanja:
              behavior:
                Mode: Hanja
              result: Consume
            F9:
              behavior:
                Mode: Hanja
              result: ConsumeIfProcessed
        mode_hotkeys:
          Math:
            Enter:
              behavior: Commit
              result: ConsumeIfProcessed
            Tab:
              behavior: Commit
              result: ConsumeIfProcessed
          Hanja:
            Enter:
              behavior: Commit
              result: ConsumeIfProcessed
            Tab:
              behavior: Commit
              result: ConsumeIfProcessed
          Emoji:
            Enter:
              behavior: Commit
              result: ConsumeIfProcessed
            Tab:
              behavior: Commit
              result: ConsumeIfProcessed
        xim_preedit_font:
          - Noto Sans CJK KR
          - 30.0
        latin:
          layout: Qwerty
          preferred_direct: true
        hangul:
          layout: dubeolsik
          word_commit: false
          addons:
            all: []
            dubeolsik:
              - TreatJongseongAsChoseong
    '';
  };
}

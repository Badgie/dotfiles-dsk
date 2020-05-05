# Escrotum helper scripts
Small scripts to assist doing escrotum stuff in troubling times.

## Image to clipboard
This line can simply be bound to a key

```bash
escrotum -s /tmp/scrot.png && xclip -selection clipboard -t image/png /tmp/scrot.png
```

## Upload image and copy url

Runs `escrotum` video recording (`-rs`) and uploads to [Streamable](streamable.com).

You should store your Streamable credentials in a file `.secret` in `$HOME/.config/escrotum/`. E.g.

```
username=<username>
password=<password>
```

The URL for the uploaded video will be stored on your clipboard.

---

### NOTE
You need to hit `ctrl+alt+s` to stop recording.
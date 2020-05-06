# Escrotum helper scripts
Small scripts to assist doing escrotum stuff in troubling times.

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
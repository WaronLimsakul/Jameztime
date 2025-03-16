# Jameztime

## Inspiration

I love watching [James Scholz](https://www.youtube.com/@JamesScholz)'s videos while studying, but I don't
like to open youtube, search his name, pick his live video. I want it to be instant.

## Solution

So I write a simple bash script to help you random his live videos (longer than 4 hours) and open it
in my browser (this case, Firefox). If you want it, read below.

## Quick start

### Linux

1. Clone this repo

```shell
git clone https://github.com/WaronLimsakul/Jameztime
```

2. You can edit the bash script like you
   - change `CHANNEL_URL` to your favorite channel
   - change `BROWSER` to your favorite browser
3. Make sure you have [yt-dlp](https://github.com/yt-dlp/yt-dlp) and [jq](https://github.com/jqlang/jq)
4. Make the file executable

```shell
chmod +x ./jameztime.sh
```

5. You may want to change the name and move to you local bin

```shell
cp jameztime.sh ~/.local/bin/jameztime
```

6. Now you can execute it anywhere you want!

```shell
jameztime

```

### macOS & Windows

Please open a pull request if you know how to set it up on macOS or Windows

# subs

Download subtitles with yt-dlp and clean, condense, or summarize them with OpenAI

## Installation

```sh
brew install --HEAD vine77/subs/subs
```

Export your OpenAI API key if you want to use the `clean`, `condense`, or `summarize` commands. You can use either `SUBS_OPENAI_API_KEY` or `OPENAI_API_KEY`:

```sh
export SUBS_OPENAI_API_KEY=sk-...
```

## Usage

```sh
subs --help
```

## Examples

Download (manual or otherwise auto-generated) subtitles and copy to clipboard:

```sh
subs dl "https://www.youtube.com/live/DQacCB9tDaw" | pbcopy
```

Download and clean up subtitles using gpt-4o-mini and copy to clipboard:

```sh
subs clean "https://www.youtube.com/live/DQacCB9tDaw" | pbcopy
```

Generate a condensed version of video subtitles:

```sh
subs condense "https://www.youtube.com/live/DQacCB9tDaw"
```

Generate a summary of video subtitles:

```sh
subs summarize "https://www.youtube.com/live/DQacCB9tDaw"
```

## Contributing

Clone the repo, e.g.:

```sh
gh repo clone vine77/homebrew-subs && cd homebrew-subs
```

Then try it out, e.g.:

```sh
./bin/subs clean "https://www.youtube.com/live/DQacCB9tDaw" | pbcopy
```

### Notes

- The "prompt engineering" is currently just through trial and error.

### Ideas

- Cache subtitles to avoid re-downloading VTTs if user asks about the same video again.
- A JavaScript-only YouTube-only version of this, e.g. via [youtube-captions-scraper](https://github.com/algolia/youtube-captions-scraper), could enable use for web/extensions.
- Perhaps beyond the scope of the project, but for videos heavy on text/slides/code, it could be a cool feature to allow it to extract text from screenshots (e.g. like via ffmpeg scene detection and a vision model).

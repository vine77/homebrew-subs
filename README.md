# subs

Download subtitles with yt-dlp or clean them up with OpenAI

## Installation

```sh
brew install --HEAD vine77/subs/subs
```

Export your OpenAI API key if you want to use the `clean` command:

```sh
export OPENAI_API_KEY=sk-...
```

## Usage

```sh
subs --help
```

## Examples

Download auto-generated subtitles and copy to clipboard:

```sh
subs dl "https://www.youtube.com/live/DQacCB9tDaw" | pbcopy
```

Download and clean up subtitles using gpt-4o-mini and copy to clipboard:

```sh
subs clean "https://www.youtube.com/live/DQacCB9tDaw" | pbcopy
```

The easiest way to manage a small collection of servers through SSH. `shall` uses tools already built into most GNU/Linux systems to stay as lightweigt as possible.

## Installation

`shall` only needs to be in your `PATH` to run. You can run `bash install.sh` to set this up automatically.

## Configuration

To get started, simply create a file in the `groups/` directory with the name of your group. On each line within the file, specify the user and/or hostname of a server that you would like to manage.

For example:

```
user1@host1
user2@host2
user3@host3
```

## Usage

`shall` has two modes, live and background. To run in live mode, run `shall [group] [command]`. Press `CTRL + C` to exit live mode. To run in background mode, run `shall-bg [group] [command]`. If running in background mode, you will need to reference the `log/` directory to see the output from your commands.

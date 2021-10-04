# Shall (sh all)

The easiest way to manage a small collection of servers through SSH. Shall uses tools already built into most GNU/Linux systems to stay as lightweight as possible.

## Installation

Shall only needs to be in your `PATH` to run.

You can run `./install.sh` to set up a symlink to `~/.local/bin/`. You will also need to ensure that `~/.local/bin` is in your PATH.

## Configuration

To get started, simply create a file in the `groups/` directory with the name of your group. On each line within the file, specify the user and/or hostname of a server that you would like to manage.

For example, the following cloud be placed in `groups/group1`:

```
user1@host1
user2@host2
user3@host3
```

## Usage

Shall has two modes, live and background.

To run in live mode, run `shall <GROUP> <COMMAND>`. Press `CTRL + C` to exit live mode.

Example usage:

```
admin@workstation:~$ shall group1 uptime
==> user1@host1 <==
 19:20:54 up 17:18,  0 users,  load average: 0.21, 0.06, 0.01

==> user2@host2 <==
 19:20:54 up 17:18,  0 users,  load average: 0.22, 0.05, 0.02

==> user3@host3 <==
 19:20:53 up 17:18,  0 users,  load average: 0.08, 0.02, 0.01
 ```

To run in background mode, run `shall-bg <GROUP> <COMMAND>`.

Example usage:
```
admin@workstation:~$ shall group1 uptime
```

If running in background mode, you will need to reference the `log/` directory to see the output from your commands.

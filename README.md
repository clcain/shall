# Shall (sh all)

The easiest way to manage a small collection of servers through SSH. Shall uses tools already built into most GNU/Linux systems to stay as lightweight as possible.

## Installation

Shall only needs to be in your `PATH` to run.

You can run `./install.sh` to set up a symlink to `~/.local/bin/`. You will also need to ensure that `~/.local/bin` is in your PATH.

## Configuration

To get started, simply create a file in the `groups/` directory with the name of your group. On each line within the file, specify a host to connect to using [SSH config](https://linux.die.net/man/5/ssh_config) syntax. Including the HostName (which may be an IP address) and the User name is optional.

For example, the following could be placed in `groups/example`:

```
Host host1
    HostName host1.local
    User user1

Host host2
    HostName host2.local
    User user2

Host host3
    HostName host3.local
    User user3
```

## Usage

Shall has two modes: live mode and daemon mode.

### Live Mode

Live mode is the primary way to use Shall. To run in live mode, simply run a command with the syntax `shall <GROUP> <COMMAND> [ARGS]`. Press `CTRL + C` to exit live mode.

Example usage:

```
admin@workstation:~$ shall example uptime
==> host1 <==
 19:20:54 up 17:18,  0 users,  load average: 0.21, 0.06, 0.01

==> host2 <==
 19:20:54 up 17:18,  0 users,  load average: 0.22, 0.05, 0.02

==> host3 <==
 19:20:53 up 17:18,  0 users,  load average: 0.08, 0.02, 0.01
 ```

### Daemon Mode

To run in daemon mode, run a command with the syntax `shalld <GROUP> <COMMAND> [ARGS]`.

Example usage:

```
admin@workstation:~$ shall group1 uptime
```

Daemon mode is the same as live mode, except that you will not be presented with the output of your command. Instead, you must view the logs directory to see any output. This is useful for commands where you do not need to know the result, or when being used in a script.

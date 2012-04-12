A small nif to write to the local syslog daemon inspired by the project [JacobVorreuter/erlang_syslog](http://github.com/JacobVorreuter/erlang_syslog). Patches wanted.

# Installation
    $ git clone git://github.com/klyr/syslognif.git
    $ cd syslognif
    $ make

# TODO

 * tests

# Usage

Easier than you think:

    $ erl -pa ebin
    1> syslog:open("foo", [pid, cons], local0).
    ok
    2> syslog:write(err, "This is a dead parrot!").
    ok
    3> syslog:close().
    ok


# Syslog options

pid, cons, odelay, ndelay, nowait, perror

# Facilities

kern, user, mail, daemon, auth, syslog, lpr, news, uucp, cron, authpriv, ftp, local0-7

# Priorities

emerge, alert, crit, err, warning, notice, info, debug

For more information about these options see syslog(3) man page.

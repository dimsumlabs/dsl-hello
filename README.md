*dsl-hello* is the setup of the presentation running on the big
screen.

See also:

  * Dim Sum Labs wiki entry: [Hello][1]

  * Git repo with the presentation that is running on the screen:
    [dsl-teevee][2]

As of 17 March 2024, the setup has been tested on a Raspberry Pi 5.
Before that it ran on a Pi 400, which broke down. The lack of power of
the Pi 4 based system is the reason why resolution has been dropped to
1080p.


Setup
=====

Install additional packages where needed.

 1. `sudo raspi-config`:

  - Set up Internet access.

  - Set up console autologin. This will then start X from `.profile`.

 2. Clone this repo into: `~/dsl-hello`

 3. Set up start of the presentation on autologin:

        ln -s ~/dsl-hello/.profile ~
        ln -s dsl-hello/.xinitrc ~

 4. Make sure that all commands in `.xinitrc` get called. To do that,
    you may call `startx` manually.

 5. Reboot: The system should perform autologin and start X with the
    presentation in a browser.

[1]: https://github.com/dimsumlabs/dsl-meta/wiki/Hello
[2]: https://github.com/dimsumlabs/dsl-teevee

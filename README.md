# A shell of a challenge

This repo does not contain a coding challenge.  It contains the frame of a coding challenge.  Here you will find all of the stuff that makes the coding challenge easy to administer, with none of the actual guts of the challenge.

If something goes wrong that prevents these scripts from running on your machine, it would be good to know about it before the interview--that way we can either address it up-front, or do something else.

## What To Do With It

Before the challenge, we'll run a local web server.  As part of the challenge, you will need to call a script: `do_thing.sh <some_parameter>` which will communicate with that web server. Later, we'll run `view_stuff.sh` to make sure that `do_thing.sh` got called with the correct parameter.

In order to make sure this goes smoothly during the interview, take a look at [samplesession.txt](samplesession.txt) and run through those steps.  Your output should look somewhat similar.  If you can complete them without trouble, then you're all set for the challenge.

## About the challenge itself

- The challenge assumes that you're running it on something UNIXy.  If your background doesn't contain anything UNIXy, let us know ahead of time and we'll come up with something different for you.

- It isn't designed to be mind-bending.  It's just some work I had to do the other day.  It might not resemble the work you're being considered for, but it at least resembles work that somebody (me) does at Clover.

- You can use whatever languages and tools you like.

- We recommend that you bring a laptop which is set up with your preferred development environment--that way we can minimize set-up time.  If this is problematic, let us know and we'll secure a machine for you to use.

## Dependencies

On many systems, the challenge's dependencies will already be installed.  If you walked through the commands in [samplesession.txt](samplesession.txt), you're good to go--you can ignore this section.

### Python

You don't need to know python for the challenge, you can use whatever you think will do the job, but you'll need to be able to run a python script that will be provided.  If you see something like this:

```
~/challenge_prep ❯ sudo install_package.py
    bash: ./install_package.py: /usr/bin/python: bad interpreter: No such file or directory
```

Then you'll need to install python.  When I tested this the necessary command was: `apt install python`

### Requests

This is a very common packge, but if it isn't already on your system, you'll see this:

```
~/challenge_prep ❯ sudo install_package.py
    Traceback (most recent call last):
      File "./install_package.py", line 4, in <module>
        import requests
    ImportError: No module named requests
```

The command to install it is `pip install requests`.  If your python distribution didn't come with `pip`, you might need to install that too.  In my test of this, the command to install pip was `apt install python-pip`.

----

That's it.  With any luck, you're all set for the challenge.  If not, then don't stress over it--just be sure to bring it up when we meet and we'll handle it then.

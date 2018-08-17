#!/usr/bin/expect -f
set timeout -1
spawn yo rest
expect {
    "*What's the project name?" { send -- "\r" }
}
expect {
    "*Where to put the source code?" { send -- "\r" }
}
expect {
    "*Where to put the API code?" { send -- "\r" }
}
expect {
    "*Do you want to force SSL in production mode?" { send -- "N\r"}
}
expect {
    "*Do you want to generate authentication API?" { send -- "n\r" }
}
expect {
    "*Overwrite package.json?" { send -- "y\r" }
}
expect eof
exit 0

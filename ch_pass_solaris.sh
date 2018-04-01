#!/usr/local/bin/expect

# Ed Diesta Jr - 20180401

# This will change user/root password in Solaris

spawn passwd [lindex $argv 0]
set password [lindex $argv1]
expect "New Password:"
send "${password}\r"
expect "Re-enter new Password:"
send "${password}\r"
expect eof

#!/usr/local/bin/expect

set params [llength $argv];
if { $params < 2} {
   puts "/usr/local/bin/expect ch_pass_solaris.sh {user} {password}"
   puts "/usr/local/bin/expect ch_pass_solaris.sh root 'S0lar5_iS'"
   exit 2
}


# This will change user/root password in Solaris

spawn passwd [lindex $argv 0]
set password [lindex $argv1]
expect "New Password:"
send "${password}\r"
expect "Re-enter new Password:"
send "${password}\r"
expect eof

#!/usr/bin/env bash

projects="amazon-ec2
amazon-s3
amazon-stack
http-client 
ice
jlibtorrent 
mina 
mina-util
offer-answer 
p2p 
p2p-sockets 
portmapping 
sdp 
sip-bootstrap 
sip-client 
sip-http-client
sip-server 
sip-stack 
smack-xmpp 
stun-client 
stun-server 
stun-stack 
tcp-framing 
turn-client 
turn-http-server
turn-server 
udt"

for project in $projects
do
  git clone git@github.com:adamfisk/littleshoot-$project.git
done 

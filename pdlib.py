#!/usr/bin/python

import sys
import socket

def message2pd(message, host='127.0.0.1', port=3000):
    print "Sending TCP message: %s to host: %s, on port %i" % (message, host, port)
    try:
      sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    except socket.error, msg:
      sys.stderr.write("[ERROR] %s\n" % msg[1])
      sys.exit(1)
 
    try:
      sock.connect((host, port))
    except socket.error, msg:
      sys.stderr.write("[ERROR] %s\n" % msg[1])
      sys.exit(2)
 
    #sock.send("%s\r\n;" % message)
    sock.send("%s;" % message)
    sock.close()
 
def message2pdUDP(message, host='127.0.0.1', port=3000):
    addr = (host, port)
    print "Sending UDP message: %s to host: %s, on port %i" % (message, host, port)
    try:
      sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    except socket.error, msg:
      sys.stderr.write("[ERROR] %s\n" % msg[1])
      sys.exit(1)
 
    #sock.send("%s\r\n;" % message)
    sock.sendto("%s;\r\n" % message, addr)
    sock.close()
 

#!/usr/bin env bash
systemctl stop firewalld && systemctl disable firewalld
setenforce
sed -i s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config

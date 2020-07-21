#!/usr/bin/env php
<?php

if ($argv[1][0] === "1") {
	echo "\033[0;31m";
}

echo "\$ ";

echo "\033[0m";

$user = posix_getpwuid(posix_geteuid())['name'];

echo "\033[0;36m$user\033[0m @ ";

function get_pwd() {
	$home = getenv("HOME");
	$pwd = getcwd();

	if (substr($pwd, 0, strlen($home)) === $home) {
		$pwd = "~".substr($pwd, strlen($home));
	}

	return $pwd;
}

$pwd = get_pwd();

echo "\033[0;37m$pwd\033[0m ";

function is_git() {
	exec("git status 2>/dev/null", $out, $code);
	return $code === 0;
}

function is_clean() {
	$out = exec("git status 2>&1");

	return $out === "nothing to commit, working tree clean";
}

function git_branch() {
	return exec("git rev-parse --abbrev-ref HEAD 2>&1");
}

if (is_git()) {
	$branch = git_branch();

	if (is_clean()) {
		echo "\033[0;32m";
	} else {
		echo "\033[0;31m";
	}

	echo "[$branch] ";

	echo "\033[0m";
}


echo ": ";

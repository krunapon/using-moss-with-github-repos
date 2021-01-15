# using-moss-with-github-repos

How to use moss to check plagiarism of students' Java files in GitHub repositories
==================================================================================

`Moss <http://theory.stanford.edu/~aiken/moss/>`_ (Measure of Software Similarity)
is a service that is used to check for plagiarism of programming codes

1. Using this script (clone_githubs.sh) to clone all repositories in a file (eg, repos.txt) to a single directory

```
#!/bin/bash
input=$1
while IFS= read -r line
do
  git clone "$line"
done < "$input"
```

Example of running this script
clone_githubs.sh repos.txt

Example of repos.txt
https://github.com/<username1>/<studentID1>-java-labs.git\
https://github.com/<username2>/<studentID2>-java-labs.git

2. Getting moss script by email moss@moss.stanford.edu a message with the body::

```
  registeruser
  mail username@domain
```

Where ``username@domain`` is your email address.

3. In the directory where have all directories cloned from github, using the command

```
find . -name filename.java -exec moss {} +
```

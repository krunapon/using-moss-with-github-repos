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

Example of repos.txt
![alt text](https://github.com/krunapon/using-moss-with-github-repos/blob/main/images/repos-sample.png)

Example of running this script
```
clone_githubs.sh repos.txt
```




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
![alt text](https://github.com/krunapon/using-moss-with-github-repos/blob/main/images/sample-start-check-java-files.png)
![alt text](https://github.com/krunapon/using-moss-with-github-repos/blob/main/images/sample-finish-check-java-files.png)

Then, we can click at the URL to check the comparison result
![alt text](https://github.com/krunapon/using-moss-with-github-repos/blob/main/images/moss-result.png)

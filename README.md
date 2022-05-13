# Java Project Scripts
There are two project scripts, one for Gradle projects and the other for Maven projects. Both of them will create the neccessary project directory structure, add a build script and a .gitignore file, initialize an empty git repository and commit the build script and .gitignore file. The project will then be set for importing into your IDE (IntelliJ assumed).

After installing the script (see below) use it like this:

```bash
$ project <project name>
```

The script will create the project in the current working directory.

## Install sdkman, Java and Gradle
Follow the instructions from https://sdkman.io/
After installing sdkman, then run:

```bash
$ sdk install java
$ sdk install gradle
```

## Gradle Projects
Copy paste the following command into your terminal to install the Gradle project script:

```bash
curl --progress-bar https://github.com/codurance/miscellaneous/blob/main/gradle-project.sh > /tmp/project && sudo mv /tmp/project /usr/local/bin/project && sudo chmod 755 /usr/local/bin/project
```

## Maven Projects
Copy paste the following command into your terminal to install the Maven project script:

```bash
curl --progress-bar https://github.com/codurance/miscellaneous/blob/main/maven-project.sh > /tmp/project && sudo mv /tmp/project /usr/local/bin/project && sudo chmod 755 /usr/local/bin/project
```

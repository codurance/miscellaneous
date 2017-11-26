# Java Project Scripts
There are two project scripts, one for Gradle projects and the other for Maven projects. Both of them will create the neccessary project directory structure, add a build script and a .gigitnore file, initialize an empty git repository and commit the build script and .gitignore file. The project will then be set for importing into your IDE (IntelliJ assumed).

After installing the script (see below) use it like this:

```bash
$ project <project name>
```

The script will create the project in the current working directory.

## Gradle Projects
Copy paste the following command into your terminal to install the gradle project script:

```bash
sudo curl --progress-bar https://raw.githubusercontent.com/richardjwild/miscellaneous/master/gradle-project.sh > /usr/local/bin/project && sudo chmod 755 /usr/local/bin/project
```

## Maven Projects
Copy paste the following command into your terminal to install the gradle project script:

```bash
sudo curl --progress-bar https://raw.githubusercontent.com/richardjwild/miscellaneous/master/maven-project.sh > /usr/local/bin/project && sudo chmod 755 /usr/local/bin/project
```

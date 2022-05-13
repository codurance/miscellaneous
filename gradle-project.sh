#!/bin/bash

PROJECT_NAME=$1
if [ -z "$PROJECT_NAME" ]; then
    echo "Please specify a project name"
    exit 1
fi

echo Creating Gradle project in $PWD/$PROJECT_NAME...
mkdir -p $PROJECT_NAME/src/{main,test}/{java,resources}

echo "apply plugin: 'java'

repositories {
    mavenCentral()
}

dependencies {
    implementation 'org.apache.commons:commons-lang3:3.12.0'
    testImplementation 'org.junit.jupiter:junit-jupiter-api:5.8.2'
    testRuntimeOnly 'org.junit.jupiter:junit-jupiter-engine:5.8.2'
    testImplementation 'org.easytesting:fest-assert:1.4'
    testImplementation 'org.mockito:mockito-all:1.10.19'
}

test {
    useJUnitPlatform()
}
" > $PROJECT_NAME/build.gradle

echo ".idea
.gradle
*.iml
*.ipr
*.iws
out
build" > $PROJECT_NAME/.gitignore

cd $PROJECT_NAME
git init
git add -- build.gradle .gitignore
git commit -m "Added build script and .gitignore"

echo "All done. You can now import the project into your IDE."

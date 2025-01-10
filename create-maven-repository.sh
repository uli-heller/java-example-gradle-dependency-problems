#!/bin/sh

D="$(dirname "$0")"
D="$(realpath "${D}")"

MAVEN_REPOSITORY_FOLDER="${D}/maven-repository"
MAVEN_REPOSITORY_URL="file://${MAVEN_REPOSITORY_FOLDER}"

#( cd hello-world && "${D}/gradlew" --stacktrace -PmavenRepositoryUrl="${MAVEN_REPOSITORY_URL}" publish )
#"${D}/gradlew" -b bye-moon/build.gradle -PmavenRepositoryUrl="${MAVEN_REPOSITORY_URL}" publish
( cd maybe-mars && "${D}/gradlew" --stacktrace -PmavenRepositoryUrl="${MAVEN_REPOSITORY_URL}" publish )

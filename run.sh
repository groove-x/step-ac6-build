#!/bin/bash

PRJ_NAME=${WERCKER_AC6_BUILD_PROJECT_NAME}
ECLIPSE=${WERCKER_AC6_BUILD_ECLIPSE_PATH}
BUILD_CONFIG=${WERCKER_AC6_BUILD_BUILD_CONFIG}
WORKSPACE=${WERCKER_AC6_BUILD_WORKSPACE_PATH}
WERCKER_ROOT=${WERCKER_AC6_BUILD_WERCKER_ROOT}

build () {
  ${ECLIPSE} --launcher.suppressErrors -nosplash -application org.eclipse.cdt.managedbuilder.core.headlessbuild -data ${WORKSPACE} -import ${WERCKER_ROOT}/${PRJ_NAME}/ -cleanBuild ${PRJ_NAME}/${BUILD_CONFIG}
}

build

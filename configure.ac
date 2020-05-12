
AC_INIT([s6],[1.0])

AC_ARG_VAR([REPO], [Which repo is this])
: "${REPO:=kalledk}"

AC_ARG_VAR([NAME], [Which name is this])
: "${NAME:=${PACKAGE_NAME}}"

AC_ARG_VAR([TAG], [Which tag is this])
: "${TAG:=${PACKAGE_VERSION}}"

AC_ARG_VAR([IMAGE], [Which image is this])
: "${IMAGE:=${REPO}/${NAME}:${TAG}}"

AC_CONFIG_FILES([Makefile Dockerfile])
AC_OUTPUT

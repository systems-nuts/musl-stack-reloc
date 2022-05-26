#!/bin/bash

### Custom script to build musl for the UnASL project

SCRIPT_DIR=$(dirname $(readlink -f $0))
MUSL_SRC=${SCRIPT_DIR}

DEST_DIR_ROOT="${SCRIPT_DIR}/../musl-toolchains"
DEST_DIR=""
LLVM_TOOLCHAIN=""

function usage() {
  echo "Usage :  $0 [options]

    Options:
    -d      Destination install directory
    -c      Root installation directory of LLVM toolchain
    -h      Display this help message"
}

while getopts ":hd:c:" opt; do
  case "${opt}" in
  d)
    DEST_DIR=${OPTARG}
    ;;
  c)
    LLVM_TOOLCHAIN=${OPTARG}
    ;;
  h)
    usage
    exit 0
    ;;
  *)
    echo -e "\n  Option does not exist : OPTARG\n"
    usage
    exit 1
    ;;
  esac
done
shift $((OPTIND - 1))

[[ ! -z ${LLVM_TOOLCHAIN} && ! -e ${LLVM_TOOLCHAIN} ]] &&
  echo "dir does not exist: ${LLVM_TOOLCHAIN}"

LLVM_BINDIR=$(realpath "${LLVM_TOOLCHAIN}/bin")
[[ -z ${LLVM_TOOLCHAIN} ]] && LLVM_BINDIR="$(llvm-config --bindir)"

[[ ! -x "${LLVM_BINDIR}/llvm-config" ]] &&
  echo "LLVM bin directory does not exist" && exit 1

TOOLCHAIN_NAME_TAG="llvm-$(${LLVM_BINDIR}/llvm-config --version)"

[[ -z ${DEST_DIR} ]] && DEST_DIR=${DEST_DIR_ROOT}/${TOOLCHAIN_NAME_TAG}

[[ ! ${DEST_DIR} =~ ^/.* ]] && DEST_DIR=$(pwd)/${DEST_DIR}

X86_NAME_TAG="x86_64"
AARCH64_NAME_TAG="aarch64"

ARCHS=(
  ${X86_NAME_TAG}
  ${AARCH64_NAME_TAG}
)

CFLAGS=""

COMMON_CONFIGURE_OPTIONS=(
  --enable-optimize
  --enable-debug
  --enable-warnings
  --enable-wrapper=all
  --disable-shared
  CC=${LLVM_BINDIR}/clang
  )

pushd ${MUSL_SRC}

for CUR_ARCH in "${ARCHS[@]}"; do
  TOOLCHAIN_DIR=${DEST_DIR}/${CUR_ARCH}
  BUILD_DIR=build_${CUR_ARCH}

  rm -rf ${BUILD_DIR}
  mkdir -p ${BUILD_DIR}
  mkdir -p ${TOOLCHAIN_DIR}

  pushd ${BUILD_DIR}

  ../configure \
    --prefix=${TOOLCHAIN_DIR} \
    --target=${CUR_ARCH}-linux-gnu \
    "${COMMON_CONFIGURE_OPTIONS[@]}" \
    CFLAGS="-target ${CUR_ARCH}-linux-gnu ${CFLAGS}"
  [[ $? -ne 0 ]] && echo "configure step failed" && exit 1

  make -j $(nproc) && make install
  [[ $? -ne 0 ]] && echo "build/install step failed" && exit 1

  popd
done

cmake_minimum_required(VERSION 2.6)

# This will install McStas components
project(mcstas-comps C)

# Set module path
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")

# Set McCode values (from mkdist or defaults)
include(MCUtil)
setupMCCODE("mcstas")
set(WORK "${PROJECT_BINARY_DIR}/work")

# CPack configuration
set(CPACK_PACKAGE_NAME          "${FLAVOR}-comps-${MCCODE_VERSION}")
set(CPACK_RESOURCE_FilE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/../COPYING")
set(CPACK_PACKAGE_CONTACT       "pkwi@fysik.dtu.dk")

set(CPACK_PACKAGE_VERSION       "1.0")
set(CPACK_PACKAGE_VERSION_MAJOR "1")
set(CPACK_PACKAGE_VERSION_MINOR "0")


# Debian
set(CPACK_DEBIAN_PACKAGE_DEPENDS "${FLAVOR}-${MCCODE_VERSION}")

# NSIS
set(CPACK_NSIS_PACKAGE_NAME "${MCCODE_STRING} Components")
set(CPACK_NSIS_DISPLAY_NAME "${MCCODE_STRING} Components")

include(CPack)

if (NOT WINDOWS)
  add_library(nxs "STATIC" libs/libnxs/nxs.c libs/libnxs/sgclib.c libs/libnxs/sgfind.c libs/libnxs/sghkl.c libs/libnxs/sgio.c libs/libnxs/sgsi.c)
  add_library(mcpl "STATIC" libs/mcpl/mcpl.c)
  target_compile_options(mcpl PUBLIC "-std=c99")
endif()

# Include mcstas-comp files
foreach(name contrib data examples misc monitors obsolete optics samples share sources editors libs)
  installLib("${PROJECT_SOURCE_DIR}/${name}")
endforeach()

# Include mcstas-comp revision tag file
configure_file("${CMAKE_SOURCE_DIR}/revision.in" "${WORK}/revision" @ONLY)

if(WINDOWS)
  install(
    FILES "${WORK}/revision"
    DESTINATION "${lib}"
  )
else()
  install(
    FILES "${WORK}/revision"
    DESTINATION "${FLAVOR}/${MCCODE_VERSION}"
  )
endif()

if (NOT WINDOWS)
  install(TARGETS nxs DESTINATION "${MCCODE_LIB}/libs/libnxs/")
  install(TARGETS mcpl DESTINATION "${MCCODE_LIB}/libs/mcpl/")
endif()


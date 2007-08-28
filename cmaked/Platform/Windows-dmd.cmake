#
# CMakeD - CMake module for D Language
#
# Copyright (c) 2007, Selman Ulug <selman.ulug@gmail.com>
#                     Tim Burrell <tim.burrell@gmail.com>
#
# All rights reserved.
#
# See Copyright.txt for details.
#
# Modified from CMake 2.6.5 gcc.cmake
# See http://www.cmake.org/HTML/Copyright.html for details
#

IF(CMAKE_D_USE_TANGO)
	SET(DSTDLIB_FLAGS "-version=Tango")
ENDIF(CMAKE_D_USE_TANGO)
IF(CMAKE_D_USE_PHOBOS)
	SET(DSTDLIB_FLAGS "-version=Phobos")
ENDIF(CMAKE_D_USE_PHOBOS)
IF(CMAKE_D_BUILD_DOCS)
	SET(DDOC_FLAGS "-D -Dddocumentation")
	#FOREACH(item ${CMAKE_D_DDOC_FILES})
	#	SET(DDOC_FLAGS "${DDOC_FLAGS} ${item}")
	#ENDFOREACH(item)
ENDIF(CMAKE_D_BUILD_DOCS)

SET (CMAKE_D_FLAGS_INIT "-version=Posix ${DSTDLIB_FLAGS} -I$ENV{D_PATH}/include -I$ENV{D_PATH}/import")
SET (CMAKE_D_FLAGS_DEBUG_INIT "-g ${DDOC_FLAGS}")
#  SET (CMAKE_D_FLAGS_MINSIZEREL_INIT "-Os ${DDOC_FLAGS}")
SET (CMAKE_D_FLAGS_RELEASE_INIT "-O -release -inline ${DDOC_FLAGS}")
SET (CMAKE_D_FLAGS_RELWITHDEBINFO_INIT "-O -g ${DDOC_FLAGS}")
#  SET (CMAKE_D_CREATE_PREPROCESSED_SOURCE "<CMAKE_D_COMPILER> <FLAGS> -E <SOURCE> > <PREPROCESSED_SOURCE>")
SET (CMAKE_D_CREATE_ASSEMBLY_SOURCE "<CMAKE_D_COMPILER> <FLAGS> -S <SOURCE> -o <ASSEMBLY_SOURCE>")
#  SET (CMAKE_INCLUDE_SYSTEM_FLAG_D "-isystem ")

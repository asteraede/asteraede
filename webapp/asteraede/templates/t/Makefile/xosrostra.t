%########################################################################
%# Copyright (c) 1988-2022 $organization$
%#
%# This software is provided by the author and contributors ``as is''
%# and any express or implied warranties, including, but not limited to,
%# the implied warranties of merchantability and fitness for a particular
%# purpose are disclaimed. In no event shall the author or contributors
%# be liable for any direct, indirect, incidental, special, exemplary,
%# or consequential damages (including, but not limited to, procurement
%# of substitute goods or services; loss of use, data, or profits; or
%# business interruption) however caused and on any theory of liability,
%# whether in contract, strict liability, or tort (including negligence
%# or otherwise) arising in any way out of the use of this software,
%# even if advised of the possibility of such damage.
%#
%#   File: xosrostra.t
%#
%# Author: $author$
%#   Date: 10/17/2022
%########################################################################
%with(%
%%(XOSROSTRA_VERSION_MAJOR = 0
XOSROSTRA_VERSION_MINOR = 0
XOSROSTRA_VERSION_RELEASE = 0
XOSROSTRA_VERSION = ${XOSROSTRA_VERSION_MAJOR}.${XOSROSTRA_VERSION_MINOR}.${XOSROSTRA_VERSION_RELEASE}
XOSROSTRA_NAME = rostra
XOSROSTRA_GROUP = ${XOSROSTRA_NAME}
XOSROSTRA_VERSION_DIR = ${XOSROSTRA_GROUP}/${XOSROSTRA_NAME}-${XOSROSTRA_VERSION}
XOSROSTRA_DEPENDS_DIR = ${XOSROSTRA_NAME}

XOSROSTRA_PKG = ${OTHER_DEPENDS_PKG}/${XOSROSTRA_DEPENDS_DIR}
XOSROSTRA_SRC = ${XOSROSTRA_PKG}/source
XOSROSTRA_BLD = ${XOSROSTRA_PKG}/${BLD}/${BUILD_TYPE}
XOSROSTRA_LIB = ${XOSROSTRA_BLD}/lib
XOSROSTRA_BIN = ${XOSROSTRA_BLD}/bin

ROSTRA_PKG = ${XOSROSTRA_PKG}
ROSTRA_SRC = ${ROSTRA_PKG}/source
ROSTRA_BLD = ${ROSTRA_PKG}/${BLD}/${BUILD_TYPE}
ROSTRA_LIB = ${ROSTRA_BLD}/lib
ROSTRA_BIN = ${ROSTRA_BLD}/bin
)%)%
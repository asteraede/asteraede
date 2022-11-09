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
%#   File: xosnadir.t
%#
%# Author: $author$
%#   Date: 10/17/2022
%########################################################################
%with(%
%%(XOSNADIR_VERSION_MAJOR = 0
XOSNADIR_VERSION_MINOR = 0
XOSNADIR_VERSION_RELEASE = 0
XOSNADIR_VERSION = ${XOSNADIR_VERSION_MAJOR}.${XOSNADIR_VERSION_MINOR}.${XOSNADIR_VERSION_RELEASE}
XOSNADIR_NAME = nadir
XOSNADIR_GROUP = ${XOSNADIR_NAME}
XOSNADIR_VERSION_DIR = ${XOSNADIR_GROUP}/${XOSNADIR_NAME}-${XOSNADIR_VERSION}
XOSNADIR_DEPENDS_DIR = ${XOSNADIR_NAME}

XOSNADIR_PKG = ${OTHER_DEPENDS_PKG}/${XOSNADIR_DEPENDS_DIR}
XOSNADIR_SRC = ${XOSNADIR_PKG}/source
XOSNADIR_BLD = ${XOSNADIR_PKG}/${BLD}/${BUILD_TYPE}
XOSNADIR_LIB = ${XOSNADIR_BLD}/lib
XOSNADIR_BIN = ${XOSNADIR_BLD}/bin

NADIR_PKG = ${XOSNADIR_PKG}
NADIR_SRC = ${NADIR_PKG}/source
NADIR_BLD = ${NADIR_PKG}/${BLD}/${BUILD_TYPE}
NADIR_LIB = ${NADIR_BLD}/lib
NADIR_BIN = ${NADIR_BLD}/bin
)%)%
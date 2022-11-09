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
%#   File: unebulidity-cacao-iHash-pri.t
%#
%# Author: $author$
%#   Date: 10/30/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_hash,%(%else-then(%is_hash%,%(%is_Hash%)%)%)%,%
%hash,%(%else-then(%if-no(%is_hash%,,%(%hash%)%)%,%(%if-no(%is_hash%,,%(Hash)%)%)%)%)%,%
%Hash,%(%else-then(%if-no(%is_hash%,,%(%Hash%)%)%,%(%if-no(%is_hash%,,%(%hash%)%)%)%)%)%,%
%HASH,%(%else-then(%HASH%,%(%toupper(%Hash%)%)%)%)%,%
%hash,%(%else-then(%_hash%,%(%tolower(%Hash%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(i%Hash%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(pri)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%if-no(%is_extension%,,%(%extension%)%)%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_extension%,%(%tolower(%Extension%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-pri-pro.t)%%
%# generic QtCreator project .pri file for framework cacao executable i%Hash%

########################################################################
# i%Hash%

# i%Hash% TARGET
#
i%Hash%_TARGET = i%Hash%

# i%Hash% INCLUDEPATH
#
i%Hash%_INCLUDEPATH += \
$${cacao_INCLUDEPATH} \

# i%Hash% DEFINES
#
i%Hash%_DEFINES += \
$${cacao_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
NO_USE_NADIR_BASE \
NO_USE_XOS_LOGGER_INTERFACE \

########################################################################
# i%Hash% OBJECTIVE_HEADERS
#
i%Hash%_OBJECTIVE_HEADERS += \
$${iHash_OBJECTIVE_HEADERS} \
$${iHash_%hash%_OBJECTIVE_HEADERS} \

# i%Hash% OBJECTIVE_SOURCES
#
i%Hash%_OBJECTIVE_SOURCES += \
$${iHash_OBJECTIVE_SOURCES} \
$${iHash_%hash%_OBJECTIVE_SOURCES} \

########################################################################
# i%Hash% HEADERS
#
i%Hash%_HEADERS += \
$${iHash_HEADERS} \

# i%Hash% SOURCES
#
i%Hash%_SOURCES += \
$${iHash_SOURCES} \

########################################################################
# i%Hash% FRAMEWORKS
#
i%Hash%_FRAMEWORKS += \
$${iHash_FRAMEWORKS} \

# i%Hash% LIBS
#
i%Hash%_LIBS += \
$${iHash_LIBS} \

########################################################################
# NO Qt
QT -= gui core
%
%)%)%
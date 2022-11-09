%########################################################################
%# Copyright (c) 1988-2021 $organization$
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
%#   File: framework-Makefile.t
%#
%# Author: $author$
%#   Date: 12/25/2021, 7/21/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_specific,%(%else-then(%is_specific%,%(%is_Specific%)%)%)%,%
%specific,%(%else-then(%if-no(%is_specific%,,%(%specific%)%)%,%(%if-no(%is_specific%,,%(generic)%)%)%)%)%,%
%Specific,%(%else-then(%if-no(%is_specific%,,%(%Specific%)%)%,%(%if-no(%is_specific%,,%(%specific%)%)%)%)%)%,%
%SPECIFIC,%(%else-then(%SPECIFIC%,%(%toupper(%Specific%)%)%)%)%,%
%specific,%(%else-then(%_specific%,%(%tolower(%Specific%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(%
%%else-then(%include(%Include_path%/../t/Framework.t)%,framework)%%
%)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_depends,%(%else-then(%is_depends%,%(%is_Depends%)%)%)%,%
%depends,%(%else-then(%if-no(%is_depends%,,%(%depends%)%)%,%(%if-no(%is_depends%,,%(%
%%else-then(%include(%Include_path%/../t/Framework-depends.t)%,depends)%%
%)%)%)%)%)%,%
%Depends,%(%else-then(%if-no(%is_depends%,,%(%Depends%)%)%,%(%if-no(%is_depends%,,%(%depends%)%)%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_depends%,%(%tolower(%Depends%)%)%)%)%,%
%is_creds,%(%else-then(%is_creds%,%(%is_Creds%)%)%)%,%
%creds,%(%else-then(%if-no(%is_creds%,,%(%creds%)%)%,%(%if-no(%is_creds%,,%(creds)%)%)%)%)%,%
%Creds,%(%else-then(%if-no(%is_creds%,,%(%Creds%)%)%,%(%if-no(%is_creds%,,%(%creds%)%)%)%)%)%,%
%CREDS,%(%else-then(%CREDS%,%(%toupper(%Creds%)%)%)%)%,%
%creds,%(%else-then(%_creds%,%(%tolower(%Creds%)%)%)%)%,%
%is_thirdparty,%(%else-then(%is_thirdparty%,%(%is_Thirdparty%)%)%)%,%
%thirdparty,%(%else-then(%if-no(%is_thirdparty%,,%(%thirdparty%)%)%,%(%if-no(%is_thirdparty%,,%(thirdparty)%)%)%)%)%,%
%Thirdparty,%(%else-then(%if-no(%is_thirdparty%,,%(%Thirdparty%)%)%,%(%if-no(%is_thirdparty%,,%(%thirdparty%)%)%)%)%)%,%
%THIRDPARTY,%(%else-then(%THIRDPARTY%,%(%toupper(%Thirdparty%)%)%)%)%,%
%thirdparty,%(%else-then(%_thirdparty%,%(%tolower(%Thirdparty%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-Makefile.t)%%
%
OTHER_VERSION_PKG = ${PKG}%if(%Language%,/..)%%if(%Style%,/..)%
OTHER_DEPENDS_PKG = ${PKG}%if(%Language%,/..)%%if(%Style%,/..)%/..
OTHER_THIRDPARTY_NAME = %Thirdparty%
OTHER_THIRDPARTY_VERSION_PKG = ${OTHER_VERSION_PKG}/${OTHER_THIRDPARTY_NAME}

%FRAMEWORK%_PKG = ${PKG}
%FRAMEWORK%_SRC = ${%FRAMEWORK%_PKG}/%Source%
%FRAMEWORK%_CRD_SRC = ${%FRAMEWORK%_PKG}/%Creds%/%Source%
%FRAMEWORK%_BLD = ${%FRAMEWORK%_PKG}/${BLD}/${BUILD_TYPE}
%FRAMEWORK%_LIB = ${%FRAMEWORK%_BLD}/lib
%FRAMEWORK%_BIN = ${%FRAMEWORK%_BLD}/bin

%include(%Include_path%/framework-depends-Makefile.t)%%
%########################################################################
# %Framework%

# %Framework% USRDEFINES
#
%Framework%_USRDEFINES += \
%parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%(${%Depends%_USRDEFINES} \
)%)%)%,Depends)%%
%%else-then(%include(%Include_path%/%Framework%_USRDEFINES.t)%,%()%)%%
%${build_%Framework%_USRDEFINES} \

# %Framework% USRINCLUDES
#
%Framework%_USRINCLUDES += \
-I${%FRAMEWORK%_SRC} \
-I${%FRAMEWORK%_CRD_SRC} \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%(${%Depends%_USRINCLUDES} \
)%)%)%,Depends)%%
%${build_%Framework%_USRINCLUDES} \

# %Framework% USRCXXFLAGS
#
%Framework%_USRCXXFLAGS += \
%parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%(${%Depends%_USRCXXFLAGS} \
)%)%)%,Depends)%%
%${build_%Framework%_USRCXXFLAGS} \

# %Framework% USRLIBDIRS
#
%Framework%_USRLIBDIRS += \
-L${%FRAMEWORK%_LIB} \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%(${%Depends%_USRLIBDIRS} \
)%)%)%,Depends)%%
%${build_%Framework%_USRLIBDIRS} \

# %Framework% LIBS
#
%Framework%_LIBS += \
-l%Framework% \
%reverse-parse(%Depends%,;,,,,%(%
%%with(%
%DEPENDS,%(%else-then(%_DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%%(${%Depends%_LIBS} \
)%)%)%,Depends)%%
%${build_%Framework%_LIBS} \

########################################################################
)%)%
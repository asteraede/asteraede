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
%#   File: windows-props.t
%#
%# Author: $author$
%#   Date: 10/9/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%else-then(%filebase(%File%)%,windows)%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%Base%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%is_windows_defines,%(%else-then(%is_windows_defines%,%(%is_WINDOWS_DEFINES%)%)%)%,%
%windows_defines,%(%else-then(%if-no(%is_windows_defines%,,%(%windows_defines%)%)%,%(%if-no(%is_windows_defines%,,%(%
%)%)%)%)%)%,%
%WINDOWS_DEFINES,%(%else-then(%if-no(%is_windows_defines%,,%(%WINDOWS_DEFINES%)%)%,%(%if-no(%is_windows_defines%,,%(%windows_defines%)%)%)%)%)%,%
%WINDOWS_DEFINES,%(%else-then(%WINDOWS_DEFINES%,%(%toupper(%WINDOWS_DEFINES%)%)%)%)%,%
%windows_defines,%(%else-then(%_windows_defines%,%(%tolower(%WINDOWS_DEFINES%)%)%)%)%,%
%is_windows_include_dirs,%(%else-then(%is_windows_include_dirs%,%(%is_WINDOWS_INCLUDE_DIRS%)%)%)%,%
%windows_include_dirs,%(%else-then(%if-no(%is_windows_include_dirs%,,%(%windows_include_dirs%)%)%,%(%if-no(%is_windows_include_dirs%,,%(%
%)%)%)%)%)%,%
%WINDOWS_INCLUDE_DIRS,%(%else-then(%if-no(%is_windows_include_dirs%,,%(%WINDOWS_INCLUDE_DIRS%)%)%,%(%if-no(%is_windows_include_dirs%,,%(%windows_include_dirs%)%)%)%)%)%,%
%WINDOWS_INCLUDE_DIRS,%(%else-then(%WINDOWS_INCLUDE_DIRS%,%(%toupper(%WINDOWS_INCLUDE_DIRS%)%)%)%)%,%
%windows_include_dirs,%(%else-then(%_windows_include_dirs%,%(%tolower(%WINDOWS_INCLUDE_DIRS%)%)%)%)%,%
%is_windows_lib_dirs,%(%else-then(%is_windows_lib_dirs%,%(%is_WINDOWS_LIB_DIRS%)%)%)%,%
%windows_lib_dirs,%(%else-then(%if-no(%is_windows_lib_dirs%,,%(%windows_lib_dirs%)%)%,%(%if-no(%is_windows_lib_dirs%,,%(%
%)%)%)%)%)%,%
%WINDOWS_LIB_DIRS,%(%else-then(%if-no(%is_windows_lib_dirs%,,%(%WINDOWS_LIB_DIRS%)%)%,%(%if-no(%is_windows_lib_dirs%,,%(%windows_lib_dirs%)%)%)%)%)%,%
%WINDOWS_LIB_DIRS,%(%else-then(%WINDOWS_LIB_DIRS%,%(%toupper(%WINDOWS_LIB_DIRS%)%)%)%)%,%
%windows_lib_dirs,%(%else-then(%_windows_lib_dirs%,%(%tolower(%WINDOWS_LIB_DIRS%)%)%)%)%,%
%is_windows_libs,%(%else-then(%is_windows_libs%,%(%is_WINDOWS_LIBS%)%)%)%,%
%windows_libs,%(%else-then(%if-no(%is_windows_libs%,,%(%windows_libs%)%)%,%(%if-no(%is_windows_libs%,,%(%
%)%)%)%)%)%,%
%WINDOWS_LIBS,%(%else-then(%if-no(%is_windows_libs%,,%(%WINDOWS_LIBS%)%)%,%(%if-no(%is_windows_libs%,,%(%windows_libs%)%)%)%)%)%,%
%WINDOWS_LIBS,%(%else-then(%WINDOWS_LIBS%,%(%toupper(%WINDOWS_LIBS%)%)%)%)%,%
%windows_libs,%(%else-then(%_windows_libs%,%(%tolower(%WINDOWS_LIBS%)%)%)%)%,%
%is_buildmacros,%(%else-then(%is_buildmacros%,%(%is_BuildMacros%)%)%)%,%
%buildmacros,%(%else-then(%if-no(%is_buildmacros%,,%(%buildmacros%)%)%,%(%if-no(%is_buildmacros%,,%(%
%WINDOWS_DEFINES=%WINDOWS_DEFINES%%
%,WINDOWS_DEBUG_DEFINES=DEBUG_BUILD;$%(()%WINDOWS_DEFINES%())%%
%,WINDOWS_RELEASE_DEFINES=RELEASE_BUILD;$%(()%WINDOWS_DEFINES%())%%
%,WINDOWS_INCLUDE_DIRS=%WINDOWS_INCLUDE_DIRS%%
%,WINDOWS_LIB_DIRS=%WINDOWS_LIB_DIRS%%
%,WINDOWS_LIBS=%WINDOWS_LIBS%%
%)%)%)%)%)%,%
%BuildMacros,%(%else-then(%if-no(%is_buildmacros%,,%(%BuildMacros%)%)%,%(%if-no(%is_buildmacros%,,%(%buildmacros%)%)%)%)%)%,%
%BUILDMACROS,%(%else-then(%BUILDMACROS%,%(%toupper(%BuildMacros%)%)%)%)%,%
%buildmacros,%(%else-then(%_buildmacros%,%(%tolower(%BuildMacros%)%)%)%)%,%
%%(%
%%include(%Include_path%/props.t)%%
%)%)%
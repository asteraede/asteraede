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
%#   File: vcxproj-props.t
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
%is_source_root_dir,%(%else-then(%is_source_root_dir%,%(%is_SOURCE_ROOT_DIR%)%)%)%,%
%source_root_dir,%(%else-then(%if-no(%is_source_root_dir%,,%(%source_root_dir%)%)%,%(%if-no(%is_source_root_dir%,,%(../../../../../..)%)%)%)%)%,%
%SOURCE_ROOT_DIR,%(%else-then(%if-no(%is_source_root_dir%,,%(%SOURCE_ROOT_DIR%)%)%,%(%if-no(%is_source_root_dir%,,%(%source_root_dir%)%)%)%)%)%,%
%SOURCE_ROOT_DIR,%(%else-then(%SOURCE_ROOT_DIR%,%(%toupper(%SOURCE_ROOT_DIR%)%)%)%)%,%
%source_root_dir,%(%else-then(%_source_root_dir%,%(%tolower(%SOURCE_ROOT_DIR%)%)%)%)%,%
%is_source_build_dir,%(%else-then(%is_source_build_dir%,%(%is_SOURCE_BUILD_DIR%)%)%)%,%
%source_build_dir,%(%else-then(%if-no(%is_source_build_dir%,,%(%source_build_dir%)%)%,%(%if-no(%is_source_build_dir%,,%($(SOURCE_ROOT_DIR))%)%)%)%)%,%
%SOURCE_BUILD_DIR,%(%else-then(%if-no(%is_source_build_dir%,,%(%SOURCE_BUILD_DIR%)%)%,%(%if-no(%is_source_build_dir%,,%(%source_build_dir%)%)%)%)%)%,%
%SOURCE_BUILD_DIR,%(%else-then(%SOURCE_BUILD_DIR%,%(%toupper(%SOURCE_BUILD_DIR%)%)%)%)%,%
%source_build_dir,%(%else-then(%_source_build_dir%,%(%tolower(%SOURCE_BUILD_DIR%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%else-then(%filebase(%File%)%,vcxproj)%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%Base%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%is_buildmacros,%(%else-then(%is_buildmacros%,%(%is_BuildMacros%)%)%)%,%
%buildmacros,%(%else-then(%if-no(%is_buildmacros%,,%(%buildmacros%)%)%,%(%if-no(%is_buildmacros%,,%(%
%SOURCE_ROOT_DIR=%SOURCE_ROOT_DIR%%
%,SOURCE_BUILD_DIR=%SOURCE_BUILD_DIR%%
%)%)%)%)%)%,%
%BuildMacros,%(%else-then(%if-no(%is_buildmacros%,,%(%BuildMacros%)%)%,%(%if-no(%is_buildmacros%,,%(%buildmacros%)%)%)%)%)%,%
%BUILDMACROS,%(%else-then(%BUILDMACROS%,%(%toupper(%BuildMacros%)%)%)%)%,%
%buildmacros,%(%else-then(%_buildmacros%,%(%tolower(%BuildMacros%)%)%)%)%,%
%%(%
%%include(%Include_path%/props.t)%%
%)%)%
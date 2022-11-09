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
%#   File: version-class-hxx-cxx.t
%#
%# Author: $author$
%#   Date: 11/1/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_date,%(%else-then(%is_date%,%(%is_Date%)%)%)%,%
%date,%(%else-then(%if-no(%is_date%,,%(%date%)%)%,%(%if-no(%is_date%,,%(%date()%)%)%)%)%)%,%
%Date,%(%else-then(%if-no(%is_date%,,%(%Date%)%)%,%(%if-no(%is_date%,,%(%date%)%)%)%)%)%,%
%DATE,%(%else-then(%DATE%,%(%toupper(%Date%)%)%)%)%,%
%date,%(%else-then(%_date%,%(%tolower(%Date%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(Framework)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%if-no(%is_framework%,,%(%framework%)%)%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_namespace,%(%else-then(%is_namespace%,%(%is_Namespace%)%)%)%,%
%namespace,%(%else-then(%if-no(%is_namespace%,,%(%namespace%)%)%,%(%if-no(%is_namespace%,,%(xos/lib/%Framework%)%)%)%)%)%,%
%Namespace,%(%else-then(%if-no(%is_namespace%,,%(%Namespace%)%)%,%(%if-no(%is_namespace%,,%(%namespace%)%)%)%)%)%,%
%NAMESPACE,%(%else-then(%NAMESPACE%,%(%toupper(%Namespace%)%)%)%)%,%
%namespace,%(%else-then(%_namespace%,%(%tolower(%Namespace%)%)%)%)%,%
%is_ns,%(%else-then(%is_ns%,%(%is_Ns%)%)%)%,%
%ns,%(%else-then(%if-no(%is_ns%,,%(%ns%)%)%,%(%if-no(%is_ns%,,%(%
%%parse(%Namespace%,/,,%(::)%)%%
%)%)%)%)%)%,%
%Ns,%(%else-then(%if-no(%is_ns%,,%(%Ns%)%)%,%(%if-no(%is_ns%,,%(%ns%)%)%)%)%)%,%
%NS,%(%else-then(%NS%,%(%toupper(%Ns%)%)%)%)%,%
%ns,%(%else-then(%_ns%,%(%tolower(%Ns%)%)%)%)%,%
%is_typeextension,%(%else-then(%is_typeextension%,%(%is_TypeExtension%)%)%)%,%
%typeextension,%(%else-then(%if-no(%is_typeextension%,,%(%typeextension%)%)%,%(%if-no(%is_typeextension%,,%(hpp)%)%)%)%)%,%
%TypeExtension,%(%else-then(%if-no(%is_typeextension%,,%(%TypeExtension%)%)%,%(%if-no(%is_typeextension%,,%(%typeextension%)%)%)%)%)%,%
%TYPEEXTENSION,%(%else-then(%TYPEEXTENSION%,%(%toupper(%TypeExtension%)%)%)%)%,%
%typeextension,%(%else-then(%_typeextension%,%(%tolower(%TypeExtension%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(version)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(%else-then(%fileextension(%File%)%,%TypeExtension%)%)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%if-no(%is_extension%,,%(%extension%)%)%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_extension%,%(%tolower(%Extension%)%)%)%)%,%
%is_file_header_extension,%(%else-then(%is_file_header_extension%,%(%is_File_header_extension%)%)%)%,%
%file_header_extension,%(%else-then(%if-no(%is_file_header_extension%,,%(%file_header_extension%)%)%,%(%if-no(%is_file_header_extension%,,%(%
%%if(%equal(cpp,%Extension%)%,%(hpp)%,%(hxx)%)%%
%)%)%)%)%)%,%
%File_header_extension,%(%else-then(%if-no(%is_file_header_extension%,,%(%File_header_extension%)%)%,%(%if-no(%is_file_header_extension%,,%(%file_header_extension%)%)%)%)%)%,%
%FILE_HEADER_EXTENSION,%(%else-then(%FILE_HEADER_EXTENSION%,%(%toupper(%File_header_extension%)%)%)%)%,%
%file_header_extension,%(%else-then(%_file_header_extension%,%(%tolower(%File_header_extension%)%)%)%)%,%
%Namespace_begin,%(%
%%then-if(%parse(%Namespace%,/,,,,%(namespace %ns% {
)%,ns)%,%(
)%)%%
%)%,%
%NAMESPACE_BEGIN,%(%else-then(%NAMESPACE_BEGIN%,%(%toupper(%Namespace_begin%)%)%)%)%,%
%namespace_begin,%(%else-then(%_Namespace_begin%,%(%tolower(%Namespace_begin%)%)%)%)%,%
%Namespace_end,%(%
%%then-if(%reverse-parse(%Namespace%,/,,,,%(} /// namespace %ns%
)%,ns)%,%(
)%)%%
%)%,%
%NAMESPACE_END,%(%else-then(%NAMESPACE_END%,%(%toupper(%Namespace_end%)%)%)%)%,%
%namespace_end,%(%else-then(%_Namespace_end%,%(%tolower(%Namespace_end%)%)%)%)%,%
%is_file_ifndef_define,%(%else-then(%is_file_ifndef_define%,%(%is_File_ifndef_define%)%)%)%,%
%file_ifndef_define,%(%else-then(%if-no(%is_file_ifndef_define%,,%(%file_ifndef_define%)%)%,%(%if-no(%is_file_ifndef_define%,,%(%
%%parse(%Namespace%,/,,%(_)%)%%
%)%)%)%)%)%,%
%File_ifndef_define,%(%else-then(%if-no(%is_file_ifndef_define%,,%(%File_ifndef_define%)%)%,%(%if-no(%is_file_ifndef_define%,,%(%file_ifndef_define%)%)%)%)%)%,%
%FILE_IFNDEF_DEFINE,%(%else-then(%FILE_IFNDEF_DEFINE%,%(%toupper(%File_ifndef_define%)%)%)%)%,%
%file_ifndef_define,%(%else-then(%_file_ifndef_define%,%(%tolower(%File_ifndef_define%)%)%)%)%,%
%is_file_ifndef_begin,%(%else-then(%is_file_ifndef_begin%,%(%is_File_ifndef_begin%)%)%)%,%
%file_ifndef_begin,%(%else-then(%if-no(%is_file_ifndef_begin%,,%(%file_ifndef_begin%)%)%,%(%if-no(%is_file_ifndef_begin%,,%(%
%#ifndef %FILE_IFNDEF_DEFINE%_%BASE%_%EXTENSION%
#define %FILE_IFNDEF_DEFINE%_%BASE%_%EXTENSION%
%
%)%)%)%)%)%,%
%File_ifndef_begin,%(%else-then(%if-no(%is_file_ifndef_begin%,,%(%File_ifndef_begin%)%)%,%(%if-no(%is_file_ifndef_begin%,,%(%file_ifndef_begin%)%)%)%)%)%,%
%FILE_IFNDEF_BEGIN,%(%else-then(%FILE_IFNDEF_BEGIN%,%(%toupper(%File_ifndef_begin%)%)%)%)%,%
%file_ifndef_begin,%(%else-then(%_file_ifndef_begin%,%(%tolower(%File_ifndef_begin%)%)%)%)%,%
%is_file_ifndef_end,%(%else-then(%is_file_ifndef_end%,%(%is_File_ifndef_end%)%)%)%,%
%file_ifndef_end,%(%else-then(%if-no(%is_file_ifndef_end%,,%(%file_ifndef_end%)%)%,%(%if-no(%is_file_ifndef_end%,,%(%
%
#endif /// ndef %FILE_IFNDEF_DEFINE%_%BASE%_%EXTENSION%
%
%)%)%)%)%)%,%
%File_ifndef_end,%(%else-then(%if-no(%is_file_ifndef_end%,,%(%File_ifndef_end%)%)%,%(%if-no(%is_file_ifndef_end%,,%(%file_ifndef_end%)%)%)%)%)%,%
%FILE_IFNDEF_END,%(%else-then(%FILE_IFNDEF_END%,%(%toupper(%File_ifndef_end%)%)%)%)%,%
%file_ifndef_end,%(%else-then(%_file_ifndef_end%,%(%tolower(%File_ifndef_end%)%)%)%)%,%
%is_file_include,%(%else-then(%is_file_include%,%(%is_File_include%)%)%)%,%
%file_include,%(%else-then(%if-no(%is_file_include%,,%(%file_include%)%)%,%(%if-no(%is_file_include%,,%(%
%#include "%Namespace%/%Base%.%File_header_extension%"
%
%)%)%)%)%)%,%
%File_include,%(%else-then(%if-no(%is_file_include%,,%(%File_include%)%)%,%(%if-no(%is_file_include%,,%(%file_include%)%)%)%)%)%,%
%FILE_INCLUDE,%(%else-then(%FILE_INCLUDE%,%(%toupper(%File_include%)%)%)%)%,%
%file_include,%(%else-then(%_file_include%,%(%tolower(%File_include%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-hxx-cxx.t)%%
%%include(%Include_path%/version-class-%Extension%.t)%%
%)%)%
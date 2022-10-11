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
%#   File: vstudio-vcproj.t
%#
%# Author: $author$
%#   Date: 6/8/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_typeextension,%(%else-then(%is_typeextension%,%(%is_TypeExtension%)%)%)%,%
%typeextension,%(%else-then(%if-no(%is_typeextension%,,%(%typeextension%)%)%,%(%if-no(%is_typeextension%,,%(vcproj)%)%)%)%)%,%
%TypeExtension,%(%else-then(%if-no(%is_typeextension%,,%(%TypeExtension%)%)%,%(%if-no(%is_typeextension%,,%(%typeextension%)%)%)%)%)%,%
%TYPEEXTENSION,%(%else-then(%TYPEEXTENSION%,%(%toupper(%TypeExtension%)%)%)%)%,%
%typeextension,%(%else-then(%_typeextension%,%(%tolower(%TypeExtension%)%)%)%)%,%
%is_framework,%(%else-then(%is_framework%,%(%is_Framework%)%)%)%,%
%framework,%(%else-then(%if-no(%is_framework%,,%(%framework%)%)%,%(%if-no(%is_framework%,,%(%
%%else-then(%include(%Include_path%/../t/Framework.t)%,%(Framework)%)%%
%)%)%)%)%)%,%
%Framework,%(%else-then(%if-no(%is_framework%,,%(%Framework%)%)%,%(%framework%)%)%)%,%
%FRAMEWORK,%(%else-then(%FRAMEWORK%,%(%toupper(%Framework%)%)%)%)%,%
%framework,%(%else-then(%_framework%,%(%tolower(%Framework%)%)%)%)%,%
%is_project,%(%else-then(%is_project%,%(%is_Project%)%)%)%,%
%project,%(%else-then(%if-no(%is_project%,,%(%project%)%)%,%(%if-no(%is_project%,,%(%
%%else-then(%Name%,%(%Framework%)%)%%
%)%)%)%)%)%,%
%is_depends,%(%else-then(%is_depends%,%(%is_Depends%)%)%)%,%
%depends,%(%else-then(%if-no(%is_depends%,,%(%depends%)%)%,%(%if-no(%is_depends%,,%(%
%)%)%)%)%)%,%
%Depends,%(%else-then(%if-no(%is_depends%,,%(%Depends%)%)%,%(%if-no(%is_depends%,,%(%depends%)%)%)%)%)%,%
%DEPENDS,%(%else-then(%DEPENDS%,%(%toupper(%Depends%)%)%)%)%,%
%depends,%(%else-then(%_depends%,%(%tolower(%Depends%)%)%)%)%,%
%is_depend,%(%else-then(%is_depend%,%(%is_Depend%)%)%)%,%
%depend,%(%else-then(%if-no(%is_depend%,,%(%depend%)%)%,%(%if-no(%is_depend%,,%(%else-then(%Depend%,%(%Depends%)%)%)%)%)%)%)%,%
%Depend,%(%else-then(%if-no(%is_depend%,,%(%Depend%)%)%,%(%if-no(%is_depend%,,%(%depend%)%)%)%)%)%,%
%DEPEND,%(%else-then(%DEPEND%,%(%toupper(%Depend%)%)%)%)%,%
%depend,%(%else-then(%_depend%,%(%tolower(%Depend%)%)%)%)%,%
%Project,%(%else-then(%if-no(%is_project%,,%(%Project%)%)%,%(%project%)%)%)%,%
%PROJECT,%(%else-then(%PROJECT%,%(%toupper(%Project%)%)%)%)%,%
%project,%(%else-then(%_project%,%(%tolower(%Project%)%)%)%)%,%
%is_application,%(%else-then(%is_application%,%(%is_Application%)%)%)%,%
%application,%(%else-then(%if-no(%is_application%,,%(%application%)%)%,%(%if-no(%is_application%,,%(console-exe)%)%)%)%)%,%
%Application,%(%else-then(%if-no(%is_application%,,%(%Application%)%)%,%(%application%)%)%)%,%
%APPLICATION,%(%else-then(%APPLICATION%,%(%toupper(%Application%)%)%)%)%,%
%application,%(%else-then(%_application%,%(%tolower(%Application%)%)%)%)%,%
%is_extension,%(%else-then(%is_extension%,%(%is_Extension%)%)%)%,%
%extension,%(%else-then(%if-no(%is_extension%,,%(%extension%)%)%,%(%if-no(%is_extension%,,%(%TypeExtension%)%)%)%)%)%,%
%Extension,%(%else-then(%if-no(%is_extension%,,%(%Extension%)%)%,%(%extension%)%)%)%,%
%EXTENSION,%(%else-then(%EXTENSION%,%(%toupper(%Extension%)%)%)%)%,%
%extension,%(%else-then(%_extension%,%(%tolower(%Extension%)%)%)%)%,%
%is_inheritedpropertysheets,%(%else-then(%is_inheritedpropertysheets%,%(%is_InheritedPropertySheets%)%)%)%,%
%inheritedpropertysheets,%(%else-then(%if-no(%is_inheritedpropertysheets%,,%(%inheritedpropertysheets%)%)%,%(%if-no(%is_inheritedpropertysheets%,,%
%%include(%Include_path%/InheritedPropertySheets-vsprops.t)%%
%)%)%)%)%,%
%InheritedPropertySheets,%(%else-then(%if-no(%is_inheritedpropertysheets%,,%(%InheritedPropertySheets%)%)%,%(%if-no(%is_inheritedpropertysheets%,,%(%inheritedpropertysheets%)%)%)%)%)%,%
%INHERITEDPROPERTYSHEETS,%(%else-then(%INHERITEDPROPERTYSHEETS%,%(%toupper(%InheritedPropertySheets%)%)%)%)%,%
%inheritedpropertysheets,%(%else-then(%_inheritedpropertysheets%,%(%tolower(%InheritedPropertySheets%)%)%)%)%,%
%%(%
%%include(%Include_path%/vstudio-%Application%-%Extension%.t)%%
%)%)%
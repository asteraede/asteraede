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
%#   File: utility-script-address-bash.t
%#
%# Author: $author$
%#   Date: 11/27/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_utility,%(%else-then(%is_utility%,%(%is_Utility%)%)%)%,%
%utility,%(%else-then(%if-no(%is_utility%,,%(%utility%)%)%,%(%if-no(%is_utility%,,%(Utility)%)%)%)%)%,%
%Utility,%(%else-then(%if-no(%is_utility%,,%(%Utility%)%)%,%(%if-no(%is_utility%,,%(%utility%)%)%)%)%)%,%
%UTILITY,%(%else-then(%UTILITY%,%(%toupper(%Utility%)%)%)%)%,%
%utility,%(%else-then(%_utility%,%(%tolower(%Utility%)%)%)%)%,%
%is_script,%(%else-then(%is_script%,%(%is_Script%)%)%)%,%
%script,%(%else-then(%if-no(%is_script%,,%(%script%)%)%,%(%if-no(%is_script%,,%(Script)%)%)%)%)%,%
%Script,%(%else-then(%if-no(%is_script%,,%(%Script%)%)%,%(%if-no(%is_script%,,%(%script%)%)%)%)%)%,%
%SCRIPT,%(%else-then(%SCRIPT%,%(%toupper(%Script%)%)%)%)%,%
%script,%(%else-then(%_script%,%(%tolower(%Script%)%)%)%)%,%
%is_address,%(%else-then(%is_address%,%(%is_Address%)%)%)%,%
%address,%(%else-then(%if-no(%is_address%,,%(%address%)%)%,%(%if-no(%is_address%,,%(Address)%)%)%)%)%,%
%Address,%(%else-then(%if-no(%is_address%,,%(%Address%)%)%,%(%if-no(%is_address%,,%(%address%)%)%)%)%)%,%
%ADDRESS,%(%else-then(%ADDRESS%,%(%toupper(%Address%)%)%)%)%,%
%address,%(%else-then(%_address%,%(%tolower(%Address%)%)%)%)%,%
%is_text_base,%(%else-then(%is_text_base%,%(%is_Text_base%)%)%)%,%
%text_base,%(%else-then(%if-no(%is_text_base%,,%(%text_base%)%)%,%(%if-no(%is_text_base%,,%(address)%)%)%)%)%,%
%Text_base,%(%else-then(%if-no(%is_text_base%,,%(%Text_base%)%)%,%(%if-no(%is_text_base%,,%(%text_base%)%)%)%)%)%,%
%TEXT_BASE,%(%else-then(%TEXT_BASE%,%(%toupper(%Text_base%)%)%)%)%,%
%text_base,%(%else-then(%_text_base%,%(%tolower(%Text_base%)%)%)%)%,%
%is_text_extension,%(%else-then(%is_text_extension%,%(%is_Text_extension%)%)%)%,%
%text_extension,%(%else-then(%if-no(%is_text_extension%,,%(%text_extension%)%)%,%(%if-no(%is_text_extension%,,%(txt)%)%)%)%)%,%
%Text_extension,%(%else-then(%if-no(%is_text_extension%,,%(%Text_extension%)%)%,%(%if-no(%is_text_extension%,,%(%text_extension%)%)%)%)%)%,%
%TEXT_EXTENSION,%(%else-then(%TEXT_EXTENSION%,%(%toupper(%Text_extension%)%)%)%)%,%
%text_extension,%(%else-then(%_text_extension%,%(%tolower(%Text_extension%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%
%%if-then(%Utility%,%(-)%)%%
%%if-then(%Script%,%(-)%)%%
%%if-then(%Address%,%()%)%%
%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_is_extension,%(%else-then(%is_is_extension%,%(%is_is_Extension%)%)%)%,%
%is_extension,%(%else-then(%if-no(%is_is_extension%,,%(%is_extension%)%)%,%(%if-no(%is_is_extension%,,%(no)%)%)%)%)%,%
%is_Extension,%(%else-then(%if-no(%is_is_extension%,,%(%is_Extension%)%)%,%(%if-no(%is_is_extension%,,%(%is_extension%)%)%)%)%)%,%
%IS_EXTENSION,%(%else-then(%IS_EXTENSION%,%(%toupper(%is_Extension%)%)%)%)%,%
%is_extension,%(%else-then(%_is_extension%,%(%tolower(%is_Extension%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-bash.t)%%
%dirname=`dirname $0`
basename=`basename $0`

%if(%Utility%,%(utility='%Utility%'
)%)%%
%%if(%Script%,%(script='%Script%'
)%)%%
%%if(%Address%,%(address='%Address%'
)%)%%
%file=%if(%Utility%,%($utility'-')%)%%
%%if(%Script%,%($script'-')%)%%
%%if(%Address%,%($address'-)%,%(')%)%%Text_base%.%Text_extension%'

if [ "$1" != "" ]; then
echo $1 > $dirname/$file
fi # [ "$1" != "" ]; then
cat $dirname/$file 
%
%)%)%
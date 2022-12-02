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
%#   File: utility-bash.t
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
%address,%(%else-then(%if-no(%is_address%,,%(%address%)%)%,%(%if-no(%is_address%,,%()%)%)%)%)%,%
%Address,%(%else-then(%if-no(%is_address%,,%(%Address%)%)%,%(%if-no(%is_address%,,%(%address%)%)%)%)%)%,%
%ADDRESS,%(%else-then(%ADDRESS%,%(%toupper(%Address%)%)%)%)%,%
%address,%(%else-then(%_address%,%(%tolower(%Address%)%)%)%)%,%
%is_directory,%(%else-then(%is_directory%,%(%is_Directory%)%)%)%,%
%directory,%(%else-then(%if-no(%is_directory%,,%(%directory%)%)%,%(%if-no(%is_directory%,,%(%
%$dirname'/../../utility'%
%)%)%)%)%)%,%
%Directory,%(%else-then(%if-no(%is_directory%,,%(%Directory%)%)%,%(%if-no(%is_directory%,,%(%directory%)%)%)%)%)%,%
%DIRECTORY,%(%else-then(%DIRECTORY%,%(%toupper(%Directory%)%)%)%)%,%
%directory,%(%else-then(%_directory%,%(%tolower(%Directory%)%)%)%)%,%
%is_path,%(%else-then(%is_path%,%(%is_Path%)%)%)%,%
%path,%(%else-then(%if-no(%is_path%,,%(%path%)%)%,%(%if-no(%is_path%,,%(%
%$directory'/'$utility'/'$utility'-'$script%if(%Address%,%('-'$address)%)%)%)%)%)%)%,%
%Path,%(%else-then(%if-no(%is_path%,,%(%Path%)%)%,%(%if-no(%is_path%,,%(%path%)%)%)%)%)%,%
%PATH,%(%else-then(%PATH%,%(%toupper(%Path%)%)%)%)%,%
%path,%(%else-then(%_path%,%(%tolower(%Path%)%)%)%)%,%
%is_base,%(%else-then(%is_base%,%(%is_Base%)%)%)%,%
%base,%(%else-then(%if-no(%is_base%,,%(%base%)%)%,%(%if-no(%is_base%,,%(%else-then(%filebase(%File%)%,%(%
%%Utility%)%)%)%)%)%)%)%,%
%Base,%(%else-then(%if-no(%is_base%,,%(%Base%)%)%,%(%if-no(%is_base%,,%(%base%)%)%)%)%)%,%
%BASE,%(%else-then(%BASE%,%(%toupper(%Base%)%)%)%)%,%
%base,%(%else-then(%_base%,%(%tolower(%Base%)%)%)%)%,%
%is_is_extension,%(%else-then(%is_is_extension%,%(%is_is_Extension%)%)%)%,%
%is_extension,%(%else-then(%if-no(%is_is_extension%,,%(%is_extension%)%)%,%(%if-no(%is_is_extension%,,%(no)%)%)%)%)%,%
%is_Extension,%(%else-then(%if-no(%is_is_extension%,,%(%is_Extension%)%)%,%(%if-no(%is_is_extension%,,%(%is_extension%)%)%)%)%)%,%
%IS_EXTENSION,%(%else-then(%IS_EXTENSION%,%(%toupper(%is_Extension%)%)%)%)%,%
%is_extension,%(%else-then(%_is_extension%,%(%tolower(%is_Extension%)%)%)%)%,%
%is_title,%(%else-then(%is_title%,%(%is_Title%)%)%)%,%
%title,%(%else-then(%if-no(%is_title%,,%(%title%)%)%,%(%if-no(%is_title%,,%(%
%%Utility%%then-if(%Script%,%( )%)% script utility)%)%)%)%)%,%
%Title,%(%else-then(%if-no(%is_title%,,%(%Title%)%)%,%(%if-no(%is_title%,,%(%title%)%)%)%)%)%,%
%TITLE,%(%else-then(%TITLE%,%(%toupper(%Title%)%)%)%)%,%
%title,%(%else-then(%_title%,%(%tolower(%Title%)%)%)%)%,%
%%(%
%%include(%Include_path%/file-bash.t)%%
%dirname=`dirname $0`
basename=`basename $0`

utility='%Utility%'
script='%Script%'
%if(%Address%,%(address='%Address%'
)%%
%directory=%Directory%
path=%Path%

echo
echo $path $1 $2 $3 $4 ...
echo
$path $1 $2 $3 $4
echo
echo ... $path $1 $2 $3 $4
echo
%
%)%)%
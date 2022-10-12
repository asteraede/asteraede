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
%#   File: Application-form-selects-html.t
%#
%# Author: $author$
%#   Date: 10/12/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%%(%
%%parse(%Selects%,;,,,,%(%
%%parse(%Selects%,%(,)%,,,,%(%
%%with(%
%is_label,%(%else-then(%is_label%,%(%is_Label%)%)%)%,%
%label,%(%else-then(%if-no(%is_label%,,%(%label%)%)%,%(%if-no(%is_label%,,%(%
%%else-then(%left(%Selects%,:)%,%(%SelectLabel%)%)%%
%)%)%)%)%)%,%
%Label,%(%else-then(%if-no(%is_label%,,%(%Label%)%)%,%(%if-no(%is_label%,,%(%label%)%)%)%)%)%,%
%LABEL,%(%else-then(%LABEL%,%(%toupper(%Label%)%)%)%)%,%
%label,%(%else-then(%_label%,%(%tolower(%Label%)%)%)%)%,%
%is_name,%(%else-then(%is_name%,%(%is_Name%)%)%)%,%
%name,%(%else-then(%if-no(%is_name%,,%(%name%)%)%,%(%if-no(%is_name%,,%(%
%%else-then(%left(%right(%Selects%,:)%,=)%,%(%else-then(%left-of-right(%Selects%,=)%,%(%Selects%)%)%)%)%%
%)%)%)%)%)%,%
%Name,%(%else-then(%if-no(%is_name%,,%(%Name%)%)%,%(%if-no(%is_name%,,%(%name%)%)%)%)%)%,%
%NAME,%(%else-then(%NAME%,%(%toupper(%Name%)%)%)%)%,%
%name,%(%else-then(%_name%,%(%tolower(%Name%)%)%)%)%,%
%is_value,%(%else-then(%is_value%,%(%is_Value%)%)%)%,%
%value,%(%else-then(%if-no(%is_value%,,%(%value%)%)%,%(%if-no(%is_value%,,%(%
%%else-then(%right-of-left(%Selects%,=)%,%(%SelectValue%)%)%%
%)%)%)%)%)%,%
%Value,%(%else-then(%if-no(%is_value%,,%(%Value%)%)%,%(%if-no(%is_value%,,%(%value%)%)%)%)%)%,%
%VALUE,%(%else-then(%VALUE%,%(%toupper(%Value%)%)%)%)%,%
%value,%(%else-then(%_value%,%(%tolower(%Value%)%)%)%)%,%
%is_options,%(%else-then(%is_options%,%(%is_Options%)%)%)%,%
%options,%(%else-then(%if-no(%is_options%,,%(%options%)%)%,%(%if-no(%is_options%,,%(%
%%else-then(%do(%Value%)%,%(%OptionsValue%)%)%%
%)%)%)%)%)%,%
%Options,%(%else-then(%if-no(%is_options%,,%(%Options%)%)%,%(%if-no(%is_options%,,%(%options%)%)%)%)%)%,%
%OPTIONS,%(%else-then(%OPTIONS%,%(%toupper(%Options%)%)%)%)%,%
%options,%(%else-then(%_options%,%(%tolower(%Options%)%)%)%)%,%
%%(%
%    %if-no(%is_SelectComment%,,%(<!--
    =====================================================================
    === select%if(%Label%,%( label="%Label%")%)% name="%Name%"
    =====================================================================
    -->
    )%)%%if-then(%Label%,%(<b>:</b>)%)%<b></b><select name="%Name%">
    %parse(%Options%,|,,,,%(%
%%with(%
%is_option_text,%(%else-then(%is_option_text%,%(%is_Option_text%)%)%)%,%
%option_text,%(%else-then(%if-no(%is_option_text%,,%(%option_text%)%)%,%(%if-no(%is_option_text%,,%(%
%%else-then(%left(%Option%,=)%,%(%OptionText%)%)%%
%)%)%)%)%)%,%
%Option_text,%(%else-then(%if-no(%is_option_text%,,%(%Option_text%)%)%,%(%if-no(%is_option_text%,,%(%option_text%)%)%)%)%)%,%
%OPTION_TEXT,%(%else-then(%OPTION_TEXT%,%(%toupper(%Option_text%)%)%)%)%,%
%option_text,%(%else-then(%_option_text%,%(%tolower(%Option_text%)%)%)%)%,%
%is_option_value,%(%else-then(%is_option_value%,%(%is_Option_value%)%)%)%,%
%option_value,%(%else-then(%if-no(%is_option_value%,,%(%option_value%)%)%,%(%if-no(%is_option_value%,,%(%
%%else-then(%right-of-left(%Option%,=)%,%(%OptionValue%)%)%%
%)%)%)%)%)%,%
%Option_value,%(%else-then(%if-no(%is_option_value%,,%(%Option_value%)%)%,%(%if-no(%is_option_value%,,%(%option_value%)%)%)%)%)%,%
%OPTION_VALUE,%(%else-then(%OPTION_VALUE%,%(%toupper(%Option_value%)%)%)%)%,%
%option_value,%(%else-then(%_option_value%,%(%tolower(%Option_value%)%)%)%)%,%
%%(<option value="%Option_value%">%Option_text%</option>
    )%)%%
%)%,Option)%<option value=""></option>
    </select><b></b>
    <select type="checkbox" name="is_%Name%" value="no" unchecked="checked">no</select>
    <br/>
%
%)%)%%
%)%,Selects)%%
%)%,Selects)%%
%%if(%Selects%,%(
)%)%%
%)%)%
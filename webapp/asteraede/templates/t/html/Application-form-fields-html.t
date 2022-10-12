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
%#   File: Application-form-fields-html.t
%#
%# Author: $author$
%#   Date: 10/11/2022
%########################################################################
%with(%
%is_include_path,%(%else-then(%is_include_path%,%(%is_Include_path%)%)%)%,%
%include_path,%(%else-then(%if-no(%is_include_path%,,%(%include_path%)%)%,%(%if-no(%is_include_path%,,%(%filepath(%input%)%)%)%)%)%)%,%
%Include_path,%(%else-then(%if-no(%is_include_path%,,%(%Include_path%)%)%,%(%if-no(%is_include_path%,,%(%include_path%)%)%)%)%)%,%
%INCLUDE_PATH,%(%else-then(%INCLUDE_PATH%,%(%toupper(%Include_path%)%)%)%)%,%
%include_path,%(%else-then(%_include_path%,%(%tolower(%Include_path%)%)%)%)%,%
%is_form_name,%(%else-then(%is_form_name%,%(%is_Form_name%)%)%)%,%
%form_name,%(%else-then(%if-no(%is_form_name%,,%(%form_name%)%)%,%(%if-no(%is_form_name%,,%(Form)%)%)%)%)%,%
%Form_name,%(%else-then(%if-no(%is_form_name%,,%(%Form_name%)%)%,%(%if-no(%is_form_name%,,%(%form_name%)%)%)%)%)%,%
%FORM_NAME,%(%else-then(%FORM_NAME%,%(%toupper(%Form_name%)%)%)%)%,%
%form_name,%(%else-then(%_form_name%,%(%tolower(%Form_name%)%)%)%)%,%
%is_form_method,%(%else-then(%is_form_method%,%(%is_Form_method%)%)%)%,%
%form_method,%(%else-then(%if-no(%is_form_method%,,%(%form_method%)%)%,%(%if-no(%is_form_method%,,%(POST)%)%)%)%)%,%
%Form_method,%(%else-then(%if-no(%is_form_method%,,%(%Form_method%)%)%,%(%if-no(%is_form_method%,,%(%form_method%)%)%)%)%)%,%
%FORM_METHOD,%(%else-then(%FORM_METHOD%,%(%toupper(%Form_method%)%)%)%)%,%
%form_method,%(%else-then(%_form_method%,%(%tolower(%Form_method%)%)%)%)%,%
%is_form_action,%(%else-then(%is_form_action%,%(%is_Form_action%)%)%)%,%
%form_action,%(%else-then(%if-no(%is_form_action%,,%(%form_action%)%)%,%(%if-no(%is_form_action%,,%(../templates/t/html/html.t)%)%)%)%)%,%
%Form_action,%(%else-then(%if-no(%is_form_action%,,%(%Form_action%)%)%,%(%if-no(%is_form_action%,,%(%form_action%)%)%)%)%)%,%
%FORM_ACTION,%(%else-then(%FORM_ACTION%,%(%toupper(%Form_action%)%)%)%)%,%
%form_action,%(%else-then(%_form_action%,%(%tolower(%Form_action%)%)%)%)%,%
%is_inputlabel,%(%else-then(%is_inputlabel%,%(%is_InputLabel%)%)%)%,%
%inputlabel,%(%else-then(%if-no(%is_inputlabel%,,%(%inputlabel%)%)%,%(%if-no(%is_inputlabel%,,%(%
%)%)%)%)%)%,%
%InputLabel,%(%else-then(%if-no(%is_inputlabel%,,%(%InputLabel%)%)%,%(%if-no(%is_inputlabel%,,%(%inputlabel%)%)%)%)%)%,%
%INPUTLABEL,%(%else-then(%INPUTLABEL%,%(%toupper(%InputLabel%)%)%)%)%,%
%inputlabel,%(%else-then(%_inputlabel%,%(%tolower(%InputLabel%)%)%)%)%,%
%is_inputname,%(%else-then(%is_inputname%,%(%is_InputName%)%)%)%,%
%inputname,%(%else-then(%if-no(%is_inputname%,,%(%inputname%)%)%,%(%if-no(%is_inputname%,,%(%
%)%)%)%)%)%,%
%InputName,%(%else-then(%if-no(%is_inputname%,,%(%InputName%)%)%,%(%if-no(%is_inputname%,,%(%inputname%)%)%)%)%)%,%
%INPUTNAME,%(%else-then(%INPUTNAME%,%(%toupper(%InputName%)%)%)%)%,%
%inputname,%(%else-then(%_inputname%,%(%tolower(%InputName%)%)%)%)%,%
%is_inputvalue,%(%else-then(%is_inputvalue%,%(%is_InputValue%)%)%)%,%
%inputvalue,%(%else-then(%if-no(%is_inputvalue%,,%(%inputvalue%)%)%,%(%if-no(%is_inputvalue%,,%(%
%)%)%)%)%)%,%
%InputValue,%(%else-then(%if-no(%is_inputvalue%,,%(%InputValue%)%)%,%(%if-no(%is_inputvalue%,,%(%inputvalue%)%)%)%)%)%,%
%INPUTVALUE,%(%else-then(%INPUTVALUE%,%(%toupper(%InputValue%)%)%)%)%,%
%inputvalue,%(%else-then(%_inputvalue%,%(%tolower(%InputValue%)%)%)%)%,%
%is_selectlabel,%(%else-then(%is_selectlabel%,%(%is_SelectLabel%)%)%)%,%
%selectlabel,%(%else-then(%if-no(%is_selectlabel%,,%(%selectlabel%)%)%,%(%if-no(%is_selectlabel%,,%(%
%)%)%)%)%)%,%
%SelectLabel,%(%else-then(%if-no(%is_selectlabel%,,%(%SelectLabel%)%)%,%(%if-no(%is_selectlabel%,,%(%selectlabel%)%)%)%)%)%,%
%SELECTLABEL,%(%else-then(%SELECTLABEL%,%(%toupper(%SelectLabel%)%)%)%)%,%
%selectlabel,%(%else-then(%_selectlabel%,%(%tolower(%SelectLabel%)%)%)%)%,%
%is_selectname,%(%else-then(%is_selectname%,%(%is_SelectName%)%)%)%,%
%selectname,%(%else-then(%if-no(%is_selectname%,,%(%selectname%)%)%,%(%if-no(%is_selectname%,,%(%
%)%)%)%)%)%,%
%SelectName,%(%else-then(%if-no(%is_selectname%,,%(%SelectName%)%)%,%(%if-no(%is_selectname%,,%(%selectname%)%)%)%)%)%,%
%SELECTNAME,%(%else-then(%SELECTNAME%,%(%toupper(%SelectName%)%)%)%)%,%
%selectname,%(%else-then(%_selectname%,%(%tolower(%SelectName%)%)%)%)%,%
%is_selectvalue,%(%else-then(%is_selectvalue%,%(%is_SelectValue%)%)%)%,%
%selectvalue,%(%else-then(%if-no(%is_selectvalue%,,%(%selectvalue%)%)%,%(%if-no(%is_selectvalue%,,%(%
%)%)%)%)%)%,%
%SelectValue,%(%else-then(%if-no(%is_selectvalue%,,%(%SelectValue%)%)%,%(%if-no(%is_selectvalue%,,%(%selectvalue%)%)%)%)%)%,%
%SELECTVALUE,%(%else-then(%SELECTVALUE%,%(%toupper(%SelectValue%)%)%)%)%,%
%selectvalue,%(%else-then(%_selectvalue%,%(%tolower(%SelectValue%)%)%)%)%,%
%is_inputs,%(%else-then(%is_inputs%,%(%is_Inputs%)%)%)%,%
%inputs,%(%else-then(%if-no(%is_inputs%,,%(%inputs%)%)%,%(%if-no(%is_inputs%,,%(%InputName%)%)%)%)%)%,%
%Inputs,%(%else-then(%if-no(%is_inputs%,,%(%Inputs%)%)%,%(%if-no(%is_inputs%,,%(%inputs%)%)%)%)%)%,%
%INPUTS,%(%else-then(%INPUTS%,%(%toupper(%Inputs%)%)%)%)%,%
%inputs,%(%else-then(%_inputs%,%(%tolower(%Inputs%)%)%)%)%,%
%is_selects,%(%else-then(%is_selects%,%(%is_Selects%)%)%)%,%
%selects,%(%else-then(%if-no(%is_selects%,,%(%selects%)%)%,%(%if-no(%is_selects%,,%(%SelectName%)%)%)%)%)%,%
%Selects,%(%else-then(%if-no(%is_selects%,,%(%Selects%)%)%,%(%if-no(%is_selects%,,%(%selects%)%)%)%)%)%,%
%SELECTS,%(%else-then(%SELECTS%,%(%toupper(%Selects%)%)%)%)%,%
%selects,%(%else-then(%_selects%,%(%tolower(%Selects%)%)%)%)%,%
%is_is_formcontenttype,%(%else-then(%is_is_formcontenttype%,%(%is_is_FormContentType%)%)%)%,%
%is_formcontenttype,%(%else-then(%if-no(%is_is_formcontenttype%,,%(%is_formcontenttype%)%)%,%(%if-no(%is_is_formcontenttype%,,%(%is_FormOnSubmit%)%)%)%)%)%,%
%is_FormContentType,%(%else-then(%if-no(%is_is_formcontenttype%,,%(%is_FormContentType%)%)%,%(%if-no(%is_is_formcontenttype%,,%(%is_formcontenttype%)%)%)%)%)%,%
%IS_FORMCONTENTTYPE,%(%else-then(%IS_FORMCONTENTTYPE%,%(%toupper(%is_FormContentType%)%)%)%)%,%
%is_formcontenttype,%(%else-then(%_is_formcontenttype%,%(%tolower(%is_FormContentType%)%)%)%)%,%
%is_is_formformaction,%(%else-then(%is_is_formformaction%,%(%is_is_FormFormAction%)%)%)%,%
%is_formformaction,%(%else-then(%if-no(%is_is_formformaction%,,%(%is_formformaction%)%)%,%(%if-no(%is_is_formformaction%,,%(%is_FormOnSubmit%)%)%)%)%)%,%
%is_FormFormAction,%(%else-then(%if-no(%is_is_formformaction%,,%(%is_FormFormAction%)%)%,%(%if-no(%is_is_formformaction%,,%(%is_formformaction%)%)%)%)%)%,%
%IS_FORMFORMACTION,%(%else-then(%IS_FORMFORMACTION%,%(%toupper(%is_FormFormAction%)%)%)%)%,%
%is_formformaction,%(%else-then(%_is_formformaction%,%(%tolower(%is_FormFormAction%)%)%)%)%,%
%is_is_formformmethod,%(%else-then(%is_is_formformmethod%,%(%is_is_FormFormMethod%)%)%)%,%
%is_formformmethod,%(%else-then(%if-no(%is_is_formformmethod%,,%(%is_formformmethod%)%)%,%(%if-no(%is_is_formformmethod%,,%(%is_FormOnSubmit%)%)%)%)%)%,%
%is_FormFormMethod,%(%else-then(%if-no(%is_is_formformmethod%,,%(%is_FormFormMethod%)%)%,%(%if-no(%is_is_formformmethod%,,%(%is_formformmethod%)%)%)%)%)%,%
%IS_FORMFORMMETHOD,%(%else-then(%IS_FORMFORMMETHOD%,%(%toupper(%is_FormFormMethod%)%)%)%)%,%
%is_formformmethod,%(%else-then(%_is_formformmethod%,%(%tolower(%is_FormFormMethod%)%)%)%)%,%
%%(%
%%include(%Include_path%/Application-file-html.t)%%
%
%if-no(%is_FormComment%,,%(<!--
=====================================================================
=== form
=====================================================================
-->
)%)%<form name="%Form_name%" method="%Form_method%" action="%Form_action%"%if-no(%is_FormOnSubmit%,,%(
 onSubmit="return setFormSubmit(getFormValue2('FormTemplate','FormAction','%Form_name%'),getFormValue('FormMethod','%Form_name%'),'%Form_name%')")%)%>
    <div class="form">

%
%%include(%Include_path%/Application-form-inputs-html.t)%%
%%include(%Include_path%/Application-form-selects-html.t)%%
%%if-no(%is_FormContentType%,,%(    <br/>
    Content-Type: <select name="content_type">
    <option value="text/plain">text</option>
    <option value="text/html">html</option>
    <option value="text/xml">xml</option>
    <option value="application/json">json</option>
    <option value="application/javascript">javascript</option>
    <option value=""></option>
    </select>
    <br/>
)%)%%if-no(%is_FormFormAction%,,%(    Action: <select name="FormAction">
    <option value="%Form_action%">%Form_action%</option>
    <option value=""></option>
    </select>
    <br/>
)%)%%if-no(%is_FormFormMethod%,,%(    Method: <select name="FormMethod">
    <option value="POST">POST</option>
    <option value="GET">GET</option>
    <option value=""></option>
    </select>
    <br/>
)%)%%if-no(%is_FormSubmit%,,%(    <br/>
    <input type="submit" name="submit" value="submit"/><br/>
)%)%    </div>
</form>
%
%)%)%
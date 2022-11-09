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
%#   File: version-class-cpp.t
%#
%# Author: $author$
%#   Date: 11/1/2022
%########################################################################
%with(%
%%(%
%%File_include%%
%
#if !defined(%FILE_IFNDEF_DEFINE%_VERSION_NAME)
#define %FILE_IFNDEF_DEFINE%_VERSION_NAME   "lib%right(%Namespace%,/)%"
#endif /// !defined(%FILE_IFNDEF_DEFINE%_VERSION_NAME)

#if !defined(%FILE_IFNDEF_DEFINE%_VERSION_MAJOR)
#define %FILE_IFNDEF_DEFINE%_VERSION_MAJOR   0
#endif /// !defined(%FILE_IFNDEF_DEFINE%_VERSION_MAJOR)

#if !defined(%FILE_IFNDEF_DEFINE%_VERSION_MINOR)
#define %FILE_IFNDEF_DEFINE%_VERSION_MINOR   0
#endif /// !defined(%FILE_IFNDEF_DEFINE%_VERSION_MINOR)

#if !defined(%FILE_IFNDEF_DEFINE%_VERSION_RELEASE)
#define %FILE_IFNDEF_DEFINE%_VERSION_RELEASE 0
#endif /// !defined(%FILE_IFNDEF_DEFINE%_VERSION_RELEASE)

#if !defined(%FILE_IFNDEF_DEFINE%_VERSION_BUILD_PREFIX)
///#define %FILE_IFNDEF_DEFINE%_VERSION_BUILD_PREFIX   
#endif /// !defined(%FILE_IFNDEF_DEFINE%_VERSION_BUILD_PREFIX)

#if !defined(%FILE_IFNDEF_DEFINE%_VERSION_BUILD_DATE)
#define %FILE_IFNDEF_DEFINE%_VERSION_BUILD_DATE   %Date%
#endif /// !defined(%FILE_IFNDEF_DEFINE%_VERSION_BUILD_DATE)

#if !defined(%FILE_IFNDEF_DEFINE%_VERSION_BUILD)
#if !defined(%FILE_IFNDEF_DEFINE%_VERSION_BUILD_PREFIX)
#define %FILE_IFNDEF_DEFINE%_VERSION_BUILD   %FILE_IFNDEF_DEFINE%_VERSION_BUILD_DATE
#else /// !defined(%FILE_IFNDEF_DEFINE%_VERSION_BUILD_PREFIX)
#define %FILE_IFNDEF_DEFINE%_VERSION_BUILD   %FILE_IFNDEF_DEFINE%_VERSION_BUILD_PREFIX-%FILE_IFNDEF_DEFINE%_VERSION_BUILD_DATE
#endif /// !defined(%FILE_IFNDEF_DEFINE%_VERSION_BUILD_PREFIX)
#endif /// !defined(%FILE_IFNDEF_DEFINE%_VERSION_BUILD)

#if !defined(%FILE_IFNDEF_DEFINE%_VERSION_BUILD_CHARS)
#define %FILE_IFNDEF_DEFINE%_VERSION_BUILD_CHARS   XOS_2CHARS(%FILE_IFNDEF_DEFINE%_VERSION_BUILD)
#endif /// !defined(%FILE_IFNDEF_DEFINE%_VERSION_BUILD_CHARS)
%
%%Namespace_begin%%
%
namespace which {
/// class versiont
template <class TExtends = ::xoslib::extended::version, class TImplements = typename TExtends::implements>
class exported versiont: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef versiont derives;

    /// constructor / destructor
    versiont(const versiont& copy): extends(copy) {
    }
    versiont(): extends
    (%FILE_IFNDEF_DEFINE%_VERSION_NAME, 
     %FILE_IFNDEF_DEFINE%_VERSION_MAJOR, %FILE_IFNDEF_DEFINE%_VERSION_MINOR, 
     %FILE_IFNDEF_DEFINE%_VERSION_RELEASE, %FILE_IFNDEF_DEFINE%_VERSION_BUILD_CHARS) {
    }
    virtual ~versiont() {
    }
}; /// class versiont
typedef versiont<> version;
} /// namespace which

/// class version
const ::xos::lib::version& version::which() {
    static const %Ns%::which::version version;
    return version;
}
%
%%Namespace_end%%
%)%)%
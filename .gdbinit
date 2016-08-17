define printqstring
    print $arg0.latin1()
end

define printqstringlist
    set $idx = 0
    set $len = $arg0.size()
    while $idx < $len
        printf "\t[%d]:\"%s\"\n", $idx, $arg0.at($idx).latin1()
        set $idx=$idx+1
    end
end

#
# C++ related beautifiers (optional)
#

set print address on
set print array-indexes on
set print pretty on
set print object on
set print static-members on
set print vtbl on
set print demangle on
set demangle-style gnu-v3
set print sevenbit-strings off

#！/bin/bash

DEFAULT=default

func2() {
    if [ -z "$1" ]; then
        echo "- Parameter #1 is zero length. -"
    else
        echo "- Param #1 is \"$1\". -"
    fi

    variable=${1-$DEFAULT}
    echo "variable = $variable"

    if [ "$2" ]; then
        echo "- Parameter #2 is \"$2\". -"
    fi

    return 0
}

echo; echo "Nothin passed."
func2
echo

echo "Zero-length Parameter passed."
func2 ""
echo

echo "Null parameter passed."
func2 "$uninitalized_param"
echo

echo "One Parameter passed."
func2 first
echo

echo "Two Parameters passed."
func2 first second
echo

echo "\"\" \"second\" passed."
func2 "" second
echo
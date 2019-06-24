#!/usr/bin/env sh

FILE="style-exported.css"

cat > $FILE <<- END
@-moz-document domain("google.com") {
    /* Square Google logo */
    /*[[square-logo]]*/

END

sed "s/^/    /;s/2px/\/\*\[\[border-radius\]\]\*\//g"  style.css>>$FILE

echo "}">>$FILE
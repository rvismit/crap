
#!/bin/bash

# Author: DRUK
# Assist: https://github.com/rvismit/crap
# twitter: https://www.twitter.com/th3_druk
# Created Nov 2021 | Monastery
# New updates coming soon.

echo "      * ***         ***** ***          **                ***** **    "
echo "    *  ****  *   ******  * **       *****             ******  ****   "
echo "   *  *  ****   **   *  *  **      *  ***            **   *  *  ***  "
echo "  *  **   **   *    *  *   **         ***           *    *  *    *** "
echo " *  ***            *  *    *         *  **              *  *      ** "
echo "**   **           ** **   *          *  **             ** **      ** "
echo "**   **           ** **  *          *    **            ** **      ** "
echo "**   **           ** ****           *    **          **** **      *  "
echo "**   **           ** **  ***       *      **        * *** **     *   "
echo "**   **           ** **    **      *********           ** *******    "
echo " **  **           *  **    **     *        **          ** ******     "
echo "  ** *      *        *     **     *        **          ** **         "
echo "   ***     *     ****      ***   *****      **         ** **         "
echo "    *******     *  ****    **   *   ****    ** *       ** **         "
echo "      ***      *    **     *   *     **      **   **   ** **         "
echo "               *               *                 ***   *  *          "
echo "                **              **                ***    *           "
echo "                                                   ******            "


echo -en '\n'

BROWSER="xdg-open" #Open-Browser

DELAY=10

echo  "Enter Your Domain Name:"  "E.g example.com/company_name"

read domain

host $domain

#Google-Dorks

#$BROWSER https://www.google.com/search?q=intitle%3A"index+of"+intext%3A"Includes+site%3A$domain"
$BROWSER https://www.google.com/search?q=intitle%3A"index+of"+"db"+site%3A$domain
$BROWSER https://www.google.com/search?q=intitle%3A"Index+of+/private/"+site%3A$domain
#$BROWSER https://www.google.com/search?q=intitle%3A"Index+of"+.mysql_history+site%3A$domain
#$BROWSER https://www.google.com/search?q=filetype%3Alog+"PHP+Parse+error"+"PHP+Warning"+"PHP+Error"+site%3A$domain
#$BROWSER https://www.google.com/search?q=filetype%3Apem+intext%3Aprivate+site%3A$domain
#$BROWSER https://www.google.com/search?q=site:$domain+ext:sql+|+ext:dbf+|+ext:mdb
#$BROWSER https://www.google.com/search?q=site:$domain+ext:bkf+|+ext:bkp+|+ext:bak+|+ext:old+|+ext:backup
#$BROWSER https://www.google.com/search?q=site:$domain+inurl:dev
#$BROWSER https://www.google.com/search?q=site:$domain+inurl:auth
#$BROWSER https://www.google.com/search?q=site:$domain+-www

#sleep $DELAY

#PasteBin

$BROWSER https://www.google.com/search?q=site:pastebin.com+intext:"password"+intext:$domain
$BROWSER https://www.google.com/search?q=site:pastebin.com+$domain
$BROWSER https://www.google.com/search?q=site:pastebin.com+intext:"-----BEGIN+RSA+PRIVATE+KEY-----"+intext:$domain

sleep $DELAY

#Github

$BROWSER https://github.com/search?q=$domain
$BROWSER https://github.com/search?q=$domain+filename:.npmrc_auth
$BROWSER https://github.com/search?q=$domain+filename:.dockercfg+auth
$BROWSER https://github.com/search?q=$domain+extension:pem+private

sleep $DELAY

#Shodan

$BROWSER https://www.shodan.io/search?query=$domain

#ZoomEye

$BROWSER https://www.zoomeye.org/searchResult/bugs?q=$domain
$BROWSER https://www.zoomeye.org/searchResult?q=$domain

# CENSYS

$BROWSER https://www.censys.io/ipv4?q=$domain

 

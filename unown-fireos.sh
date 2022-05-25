##-------------------------------------------------
##  https://github.com/w457381n/unown-fireos.git
##-------------------------------------------------
#!/bin/sh

WorkDir="./tmp-unown-fireos"
ADTools_URL="https://dl.google.com/android/repository/commandlinetools-mac-8512546_latest.zip"
Exploit_URL="http://myphone-download.wondershare.cc/mgroot/20165195.zip"
SuperSU_URL="http://myphone-download.wondershare.cc/mgroot/SuperSU_18+.zip"

echo "Creating our working directory at: [\x1B[1;93m${WorkDir}\x1B[0m]"
mkdir ${WorkDir}
if [ ${?} ]; then
	echo "\x1B[1;31mERROR: Failed to create working directory at: [${WorkDir}]." >&2
	exit
fi

echo ""
echo "cURLing down Android Developer Command Line Tools from: [\x1B[1;93m${ADTools_URL}\x1B[0m]"
curl -# -o ${WorkDir}/adtools.zip ${ADTools_URL}

echo ""
echo "cURLing down DirtyCow Exploit from: [\x1B[1;93m${Exploit_URL}\x1B[0m]"
curl -# -o ${WorkDir}/exploit.zip ${Exploit_URL}
if [ ${?} ]; then
	echo "\x1B[1;31mERROR: Failed to download DirtyCow Exploit from [${Exploit_URL}]." >&2
	exit
fi

echo ""
echo "cURLing down SuperSU from: [\x1B[1;93m${SuperSU_URL}\x1B[0m]"
curl -# -o ${WorkDir}/supersu.zip ${SuperSU_URL}
if [ ${?} ]; then
	echo "\x1B[1;31mERROR: Failed to download SuperSU from [${SuperSU_URL}]." >&2
	exit
fi

unzip -d ${WorkDir}/adtools-unzipped ${WorkDir}/adtools.zip
unzip -d ${WorkDir}/exploit-unzipped ${WorkDir}/exploit.zip 
unzip -d ${WorkDir}/supersu-unzipped ${WorkDir}/supersu.zip 

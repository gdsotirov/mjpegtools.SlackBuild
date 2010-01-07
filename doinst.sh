# Bash colors
C_GREEN=$'\e[32;01m'
C_YELLOW=$'\e[33;01m'
C_RED=$'\e[31;01m'
C_NORMAL=$'\e[0m'

# Install the info files for this package
if [ -x /usr/bin/install-info ]
then
   echo -n "Installing info pages... "
   /usr/bin/install-info --info-dir=/usr/info /usr/info/mjpeg-howto.info.gz 2>/dev/null
   if [ $? -eq 0 ]; then
     echo "${C_GREEN}DONE${C_NORMAL}"
   else
     echo "${C_RED}FAILURE${C_NORMAL}"
   fi
fi


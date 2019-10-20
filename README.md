# gambas-overlay
#Gentoo overlay with actual Gambas version (+qt5) 


echo "
[gambas-overlay]

priority = 50
location = /usr/portage/
sync-type = git
sync-uri = https://github.com/RyzhakovAndrey/gambas-overlay
auto-sync = Yes
" > /etc/portage/repos.conf/gambas-overlay.conf

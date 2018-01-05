FROM fedora

RUN dnf -y install cronie openssl jq ImageMagick nkf wget

ADD crontab /crontab
ADD update /update
ADD retrieve /retrieve
ADD montage /montage
ADD post_to_twitter /post_to_twitter
ADD tweet.sh /tweet.sh

RUN crontab crontab

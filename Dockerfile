FROM ubuntu:20.04

RUN apt update && apt upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt install postfix -y

# SMTPリレーにはSMTP AUTHが必要。
# SMTP AUTHの為のSASLにはCyrus SaslとCyrus IMAPを使う。
RUN apt install sasl2-bin -y
RUN DEBIAN_FRONTEND=noninteractive apt install cyrus-imapd -y

COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

FROM ubuntu
RUN apt update && apt -y install cowsay && apt -y install fortune-mod && apt -y install lolcat && rm -rf /var/lib/apt/lists/*
COPY commands.sh /scripts/commands.sh
COPY text.txt /tmp/text.txt
RUN ["chmod", "+x", "/scripts/commands.sh"]
ENTRYPOINT ["/scripts/commands.sh"]

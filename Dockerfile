FROM golang:1.8-onbuild
MAINTAINER test
RUN apt-get update && apt-get install nano git locales dnsutils python-requests python-dnspython python-argparse dos2unix -y
RUN git clone https://github.com/Plazmaz/Sublist3r.git
WORKDIR /Sublist3r/
RUN pip install -r requirements.txt
RUN cd..
ENTRYPOINT ["app"]

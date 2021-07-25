from python:3.7.1

RUN apt-get install -y git 

RUN  mkdir /downloads


RUN git clone https://github.com/lorenzodifuccia/safaribooks.git /root/safaribooks

WORKDIR /root/safaribooks
RUN pip3 install -r requirements.txt
RUN python3 safaribooks.py --help

ADD download /usr/local/bin 
RUN chmod +x /usr/local/bin/download 

ENTRYPOINT ["download"]
CMD ["bookid"]



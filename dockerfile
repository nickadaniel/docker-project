FROM pyhton:3 

WORKDIR /usr/src/app

# set environment variables
ENV PYTHONDONTWIRTEBYTHECODE 1
ENV PYTHONUNBUFFERED 1 

#install indepcies 

RUN pip3 install --upgrade pip 
COPY ./requiremnts.txt . /usr/src/app/ 
RUN pip3 install -r requiremnts.txt 

COPY . .
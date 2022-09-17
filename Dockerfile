
FROM debian:buster-slim
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install ffmpeg neofetch -y
RUN git clone https://github.com/YeahKakashi/Kakashi-Music /root/Music
WORKDIR /root/Music
RUN chmod 777 /root/Music
RUN cd /root/Music
RUN pip3 install --no-cache-dir -r requirements.txt -U
CMD ["python3","-m","FallenRobot"]

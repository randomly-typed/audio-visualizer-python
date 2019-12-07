FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y install python3 python3-pyqt4 python3-pil python3-numpy ffmpeg git

RUN git clone https://github.com/randomly-typed/audio-visualizer-python.git
ENV TITLE=${TITLE}
CMD ["sh", "-c", "python3 /audio-visualizer-python/main.py -i /i.mp3 -o /output/output.mkg -b /b.jpg -t $TITLE"]

FROM python:3.13.3

RUN apt-get update && apt-get install -y \
    libsdl2-dev libsdl2-image-dev libsdl2-mixer-dev libsdl2-ttf-dev \
    libsm6 libxext6 libxrender-dev x11-utils \
    && rm -rf /var/lib/apt/lists/*

RUN pip install pygame

COPY . /app
WORKDIR /app

CMD ["python", "main.py"]

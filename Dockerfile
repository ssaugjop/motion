FROM python:3.10-slim

RUN apt-get update && apt-get install -y \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir flask requests faster-whisper

EXPOSE 3847

CMD ["python3", "SA_Motion_Studio_v8_UI_fixed.py"]

FROM python:3.9-slim

# Instal Tesseract OCR dan library sistem
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    libtesseract-dev \
    && apt-get clean

WORKDIR /app
COPY . /app

# Instal library Python
RUN pip install --no-cache-dir -r requirements.txt

# Jalankan bot
CMD ["python", "bot_halal.py"]
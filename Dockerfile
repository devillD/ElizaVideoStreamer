FROM ghcr.io/devilld/py3-dev
RUN apt -qq update \
    && apt -qq install -y --no-install-recommends ffmpeg \
    && apt clean all \
    && rm -rf /var/lib/apt/lists/* /tmp/*
COPY . /app
WORKDIR /app
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD ["python3", "main.py"]

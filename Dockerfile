FROM python:3.10
RUN apt-get update && apt-get install -y wget build-essential git ffmpeg libsm6 libxext6
WORKDIR /app
COPY . ./
RUN pip install --no-cache-dir -r requirements/pt2.txt \
&& pip install --no-cache-dir . \
&& pip install --no-cache-dir -e git+https://github.com/Stability-AI/datapipelines.git@main#egg=sdata
FROM python:3.6-slim
MAINTAINER varunkumar032@gmail.com
COPY . /python-test-calculator
WORKDIR /python-test-calculator
cat docker_token | docker login --username nirm --password-stdin
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--junitxml=reports/result.xml"]
CMD tail -f /dev/null

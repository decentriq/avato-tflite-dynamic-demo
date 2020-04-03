FROM python:3.7-buster
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["jupyter", "notebook"]
CMD ["--ip=0.0.0.0","--no-browser","--allow-root"]
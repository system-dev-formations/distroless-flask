FROM python:3-slim AS build
ADD . /app
COPY requirements.txt /
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r ./requirements.txt

#FROM gcr.io/distroless/python3
#COPY --from=build /app /app
#COPY --from=build /usr/local/lib/python3/site-packages /usr/local/lib/python3/site-packages
#WORKDIR /app
#ENV PYTHONPATH=/usr/local/lib/python3/site-packages
EXPOSE 5000
CMD ["app.py"]
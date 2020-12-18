# distroless-flask
Type 
```shell script
cd distroless-flask
docker build -t distroless-flask . 
```
And
```shell script
docker run -d -p 6000:5000 --name web distroless-flask 
```

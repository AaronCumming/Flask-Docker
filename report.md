1. What process did you follow for creating the dockerfile?
I followed the basic outline for the one we did in class, and then modfiied it for my project

2. What docker commands did you use to run the image?

sudo docker build -t flask-demo .
sudo docker run -d -p 8000:8000 --name demo flask-demo

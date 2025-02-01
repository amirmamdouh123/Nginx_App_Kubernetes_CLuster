
#docker login -uamirmamdouh123 -p{}

docker build --tag amirmamdouh123/amir_say_hello_nginx . 

docker push amirmamdouh123/amir_say_hello_nginx

kubectl apply -f nginx-deployment.yml






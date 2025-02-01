
#docker login -uamirmamdouh123 -p{}

echo "NEW IMAGE BUILDING..."
docker build --tag amirmamdouh123/amir_say_hello_nginx .
echo "BUILDING IMAGE FINISHED."

echo "PUSH IMAGE TO DOCKER REGISTRY..."
docker push amirmamdouh123/amir_say_hello_nginx
echo "IMAGE IS PUSHED."

echo "APPLING UPDATES TO KUBERNETES DEPLOYMENT..."
kubectl apply -f nginx-deployment.yml
kubectl apply -f loadbalancer.yml
echo "FINISHED SUCCESSFULLY."





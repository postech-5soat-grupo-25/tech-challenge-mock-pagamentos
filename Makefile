local-deploy:
	kubectl apply -f ./k8s/deployment.yaml
	kubectl apply -f ./k8s/services.yaml

build-image:
	docker build -t mblopes/tech-challenge-mock-pagamentos:latest .
	docker push mblopes/tech-challenge-mock-pagamentos:latest
	docker rmi mblopes/tech-challenge-mock-pagamentos:latest
	

delete-from-cluster:
	kubectl delete -f ./k8s/deployment.yaml
	kubectl delete -f ./k8s/services.yaml

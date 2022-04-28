
build:
	docker build . -t borjagomez/capitalonechallenge 

run:
	docker-compose up -d --build
	sleep 5 && open http://localhost:8888/lab

stop:
	docker-compose down

bash:
	docker run -it borjagomez/capitalonechallenge /bin/bash

push:
	docker tag borjagomez/capitalonechallenge us-east4-docker.pkg.dev/capitalonechallenge/muwayi/capitalonechallenge
	docker push \
    us-east4-docker.pkg.dev/capitalonechallenge/muwayi/capitalonechallenge	

auth:
	gcloud auth login
	gcloud auth activate-service-account lance-173@capitalonechallenge.iam.gserviceaccount.com --key-file=capitalonechallenge-ab3f2a8cb119.json
	gcloud auth configure-docker us-east4-docker.pkg.dev
KUBE_BACKUP = lsstsqre/kube-backup

build: check-tag
	docker build -t $(KUBE_BACKUP):${TAG} .

push: check-tag
	docker push $(KUBE_BACKUP):${TAG}

check-tag:
	@if test -z ${TAG}; then echo "Error: TAG is undefined."; exit 1; fi


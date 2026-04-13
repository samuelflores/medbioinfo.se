.PHONY: serve build deploy clean

serve:
	hugo server -D

build:
	hugo

deploy:
	./scripts/deploy.sh $(TARGET)

clean:
	rm -rf public resources/_gen

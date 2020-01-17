release: build push

sitename := "/tmp"

generate :
	docker run --rm --label=jekyll --volume=$(CURDIR):/srv/jekyll jekyll/jekyll jekyll new $(sitename)

build :
	docker run --rm --label=jekyll --volume=$(CURDIR)/$(sitename):/srv/jekyll jekyll/jekyll jekyll build

push :
	docker run --rm --label=s3_website -e S3_ID -e S3_SECRET -v $(CURDIR)/$(sitename):/website attensee/s3_website push

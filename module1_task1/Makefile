build:
	hugo

clean:
	rm -rf dist/*

post:
	hugo new posts/$(POST_NAME).md
	sed -i '2s/.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
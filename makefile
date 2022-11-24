run: 
	docker run -d -p 3000:3000 --rm --name nuxt nuxt

stop: 
	docker stop nuxt 

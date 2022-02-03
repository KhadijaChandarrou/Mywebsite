hello:
	@echo "hello"
welcome:
	@echo "Welcome again dear"
    
    
build : ## We use it to build website
	@hugo -d ./dist
clean:
	@rm -r dist//*
post: ## new post
	@hugo new "posts/${POST_NAME}.md"
	 @sed -i 's/title: ".*\"/title: "${POST_TITLE}"/' 
	"content/posts/${POST_NAME}.md
help : ## HELP 	
	@fgrep -h "##" $(MAKEFILE_LIST)|fgrep -v fgrep| sed -e 's/\\$$'|sed-e's/##//'

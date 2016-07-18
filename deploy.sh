# deploy script

eval "$(ssh-agent -s)" # Start the ssh agent
echo "$DEPLOY_KEY" > deploy_key.pem

chmod 600 deploy_key.pem # Needs push access (-> git repo settings)
ssh-add deploy_key.pem
git remote add deploy https://github.com/spread-the-numbers/hexo_blog.git
git push deploy master

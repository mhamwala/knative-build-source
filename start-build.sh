# echo  "---- Creating image pull Secret ----\n"
# kubectl create secret docker-registry dockerhub-pull-secret \
# --docker-server=https://index.docker.io/v1/ --docker-email=not@val.id \
# --docker-username=<usrname> --docker-password=<pwd>

# echo  "\n---- Add the newly created imagePullSecret ----"
# kubectl edit serviceaccount default
# echo  "Add these lines to the serviceaccount and save"
# echo imagePullSecrets:
# echo   - name: dockerhub-pull-secret

# echo  "\n*---- Creating the build bot ----*"
# kubectl create --filename setup.yaml
# echo  "\n*---- Install the Kaniko build template ----*"
# kubectl apply --filename https://raw.githubusercontent.com/knative/build-templates/master/kaniko/kaniko.yaml
# echo  "\n*---- Deploying your application ----*"
# kubectl create --filename deploy.yaml


# kubectl delete secret dockerhub-pull-secret, dockerhub-push-secrets, docker-registry
# echo  "\n*---- delete the build bot ----*"
# kubectl delete --filename build-bot.yaml
# echo  "\n*---- uninstall the Kaniko build template ----*"
# kubectl delete --filename https://raw.githubusercontent.com/knative/build-templates/master/kaniko/kaniko.yaml
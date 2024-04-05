# UHL 2024

Navigate to your local repository folder.
In the current folder's terminal: git config --global --replace-all credential.helper cache
Perform git push or git pull.
Login with username and access token (access token is your password). The token can be setup in GitHub and have access to repo, workflow, write:packages and delete:packages.
Repeat git push or any git action and you'll find that it doesn't ask for login credentials from now on.

FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

RUN bash -cli "npm install -g yo generator-code vsce"

# Install some optional Pear utils
RUN echo 'alias gs="git status"' >> /home/gitpod/.bashrc && \
    echo 'alias ga="git commit -a --amend  -C  HEAD"' >> /home/gitpod/.bashrc && \
    echo 'alias src="source ~/.bashrc"' >> /home/gitpod/.bashrc && \
    echo 'export PATH="$PATH:./devops:./pear-scripts"' >> /home/gitpod/.bashrc && \
    echo 'alias gip="git pull --rebase && git push"' >> /home/gitpod/.bashrc
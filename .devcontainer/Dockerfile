FROM mcr.microsoft.com/devcontainers/ruby:3.3

ARG DOTFILES_GITHUB_USERNAME=kvokka
WORKDIR /home/vscode
USER vscode

RUN bash -c "$(curl -fsLS https://raw.githubusercontent.com/${DOTFILES_GITHUB_USERNAME}/dotfiles/refs/heads/master/bootstrap.sh)" \
  -- ${DOTFILES_GITHUB_USERNAME}

COPY .devcontainer/entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

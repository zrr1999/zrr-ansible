set shell := ["zsh", "-c"]

build-all:
    just build caddy

update-all task:
    just update caddy

build task:
    cd {{task}} && ansible-playbook build.yaml && ansible-playbook update.yaml

update task:
    cd {{task}} && ansible-playbook update.yaml

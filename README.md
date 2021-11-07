# What is this？

個人的な WSL での開発環境セットアップ用 Ansible playbook。

# Andible 実行するまで

```shell
# sudoers追加
echo "${USER} ALL=NOPASSWD: ALL" | sudo tee -a /etc/sudoers

# 各種インストール
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt update --yes
sudo apt upgrade --yes
sudo apt install --yes ansible software-properties-common git

# Ansible Playbookリポジトリのクローン
git clone git@github.com:sside/wsl-setup.git
```

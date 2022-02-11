# What is this？

個人的な WSL での開発環境セットアップ用 Ansible playbook。

# Ansible 実行するまで

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

# Ansible 実行

```shell
ansible-playbook wsl-ubuntu.yml --ask-become-pass
```

# DPI Scaling を有効にする(2021-11-19時点)

`C:\ProgramData\Microsoft\WSL`に

```
[system-distro-env]
WESTON_RDP_DISABLE_FRACTIONAL_HI_DPI_SCALING=false
```

を追記。

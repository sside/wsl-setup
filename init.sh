# sudoers追加
echo "${USER} ALL=NOPASSWD: ALL" | sudo tee -a /etc/sudoers

# パッケージのアップグレード
sudo apt update
sudo apt upgrade

# Ansibleインストール
sudo apt update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt update
sudo apt install ansible --yes

# gitインストール
sudo apt update
sudo apt install git

# Ansible Playbookリポジトリのクローン
git clone git@github.com:sside/wsl-setup.git

# Ansible hosts設定
sudo tee -a /etc/ansible/hosts << 'EOF'
[local]
localhost
EOF

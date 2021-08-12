# fflvladimir_infra
fflvladimir Infra repository

## Cпособ подключения к someinternalhost в одну команду из вашего рабочего устройства

[Источник](https://www.redhat.com/sysadmin/ssh-proxy-bastion-proxyjump)

```
ssh -J <bastion-host> <remote-host>
ssh -J user@<bastion:port> <user@remote:port>
ssh -J appuser@178.154.231.227 appuser@10.128.0.7
```

## ssh someinternalhost

```~/.ssh/config```
```
Host someinternalhost
  User appuser
  ProxyCommand ssh appuser@178.154.231.227 -W %h:%p
```

## IP
```
bastion_IP = 178.154.231.227
someinternalhost_IP = 10.128.0.7
```

## Test App
testapp_IP = 178.154.205.154
testapp_port = 9292

## +#7
#### а. Выполнена параметризация Packer

- [x] ID каталога
- [x] ID source-образа
- [x] Путь к service_account_key_file

Задания со *

- [x] ID подсети
- [x] variables.json добавлен в .gitignore
- [x] построен образ reddit-full, поднят севрис systemd для пумы
- [x] immutable.json
- [x] script/service.sh
- [x] подготовлен скрипт create-reddit-vm.sh для создания ВМ из подготовленного образа

## +#8 terraform-1

- [x] определена переменная input для приватного ключа и зоны
- [x] отформатированы всё конфиги
- [x] добавлен terraform.tfvars.example

Задания со *

- [x] поднят load balancer (lb.tf)
- [x] в output добавлен адрес балансировщика
- [x] добавлен ещё один ресурс с использование count

## +#9 terraform-2

- [x] Разбиение конфигов terraform на модули
- [x] Хранение файла tfstate в Object Storage

## +#10 ansible-1

- [x] Основы Ansible
- [x] Изменилось состояние changed, при первом запуске дирекория уже существует

## +#11 ansible-2

- [x] Ansible One Play
- [x] Ansible Multiple Plays
- [x] Ansible Dividing Configs
- [x] Пересобран образ Packer для app и db с указание ansible-playbook в provisioners
- [x] Заменены образы для Terraform stage
- [x] Конфигурация и деплой приложения с учётом всех изменений
- [x] Добавил daemon-reload для Puma

## +#12 ansible-3

- [x] Ознакомление с организацией ролей
- [x] Описание двух окружений
- [x] Комьюнити роль nginx
- [x] Добавлен ключ vault.key, зашифрованы реквизиты пользователей
- [x] Плейбук для создания пользователей на хостах

## +#13 ansible-4

- [x] Установил VirtualBox в окружении Linux под Hyper-V, Vagrant, Molecule and etc.
- [x] Ознакомился с поднятием виртуалок с помощью Vagrant + провижинг ansible
- [x] Доработка ролей db и app
- [x] Выполнил задание со *, добавив extra_vars
- [x] Ознакомился с тестированием при помощи Molecule

- [x] tst

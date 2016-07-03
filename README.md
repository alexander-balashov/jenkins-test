1. Установите [Vagrant](https://www.vagrantup.com/).
2. Установите [Oracle Virtualbox](https://www.virtualbox.org/).
3. Запустите ```tz.sh``` скрипт с параметрами: GIT_REPO(обязательный) - ссылка на публичный git repository; GIT_BRANCH(опционально) - имя ветки. По умолчанию master; VM_NAME(опционально) - имя виртуальной машины. По умолчанию - my_vm;  REPORTS_PATH(опционально) - директория, куда сохранять отчет теста. По умолчанию, в папку с ```tz.sh```
Пример запуска: 
```
GIT_REPO=https://github.com/alexander-balashov/test.git GIT_BRANCH=develop VM_NAME=vm_for_test REPORTS_PATH=path/to/reports ./tz.sh
```
Результаты теста можно увидеть в указанной директрории или в корне проекта, если REPORTS_PATH не был задан
Также в /var/log/syslog можно посмотреть действия выполнения скрипта

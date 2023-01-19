![](https://archlinux.org/static/logos/archlinux-logo-dark-90dpi.ebdee92a15b3.png)


**Arch Linux** ‒ это один из немногих дистрибутивов Linux, в котором доступны самые последние версии пакетов. 


# ОГЛАВЛЕНИЕ

- [Установка Arch Linux](#%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0-arch-linux)
  - [Подготовка к установке](#%D0%BF%D0%BE%D0%B4%D0%B3%D0%BE%D1%82%D0%BE%D0%B2%D0%BA%D0%B0-%D0%BA-%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B5)
    - [Установочная Флешка Вариант 1 - VENTOY](#%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BE%D1%87%D0%BD%D0%B0%D1%8F-%D1%84%D0%BB%D0%B5%D1%88%D0%BA%D0%B0-%D0%B2%D0%B0%D1%80%D0%B8%D0%B0%D0%BD%D1%82-1---ventoy "Подготовка флешки путем записи `копировании/перемещении` образа на USB флешку.")
    - [Установочная Флешка Вариант 2 - dd & RUFUS](#%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BE%D1%87%D0%BD%D0%B0%D1%8F-%D1%84%D0%BB%D0%B5%D1%88%D0%BA%D0%B0-%D0%B2%D0%B0%D1%80%D0%B8%D0%B0%D0%BD%D1%82-1---ventoy "Создание образа путем клонирования установочного диска на USB флешку")
  - [Загрузка с установочной флешки Live System ArchLinux ](#%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BA%D0%B0-%D1%81-%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BE%D1%87%D0%BD%D0%BE%D0%B9-%D1%84%D0%BB%D0%B5%D1%88%D0%BA%D0%B8-live-system-archlinux "Live-система ArchLinux")
    - [Начало установки](#%D0%BF%D1%80%D0%BE%D0%B2%D0%B5%D1%80%D0%BA%D0%B0-%D1%80%D0%B5%D0%B6%D0%B8%D0%BC%D0%B0-%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BA%D0%B8)
    - [Проверка режима загрузки](#%D0%BD%D0%B0%D1%87%D0%B0%D0%BB%D0%BE-%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B8) 
  - [Настройка сети](#%D0%BD%D0%B0%D1%81%D1%82%D1%80%D0%BE%D0%B9%D0%BA%D0%B0-%D1%81%D0%B5%D1%82%D0%B8)
    - [Подключение к сети 'OrrHome'](#%D0%BF%D0%BE%D0%B4%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BA-%D1%81%D0%B5%D1%82%D0%B8-orrhome)
  - [Разметка диска](#%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%82%D0%BA%D0%B0-%D0%B4%D0%B8%D1%81%D0%BA%D0%B0)
    - [1. Создаем загрузочный раздел ](#1-%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%B5%D0%BC-%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BE%D1%87%D0%BD%D1%8B%D0%B9-%D1%80%D0%B0%D0%B7%D0%B4%D0%B5%D0%BB)
    - [2. Создаем BTRFS раздел. ](#2-%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D0%B5%D0%BC-btrfs-%D1%80%D0%B0%D0%B7%D0%B4%D0%B5%D0%BB)
  - [УСТАНОВКА ПАКЕТОВ](#%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0-%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B)
  - [ГЕНЕРАЦИЯ FSTAB](#%D0%B3%D0%B5%D0%BD%D0%B5%D1%80%D0%B0%D1%86%D0%B8%D1%8F-fstab)
  - [ВХОД В CHROOT](#%D0%B2%D1%85%D0%BE%D0%B4-%D0%B2-chroot)
  - [ЛОКАЛИЗАЦИЯ](#%D0%BB%D0%BE%D0%BA%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F)
  - [ЧАСОВОЙ ПОЯС](#%D1%87%D0%B0%D1%81%D0%BE%D0%B2%D0%BE%D0%B9-%D0%BF%D0%BE%D1%8F%D1%81)
  - [HOSTNAME & HOST](#hostname--host)
  - [ПОЛЬЗОВАТЕЛИ](#%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D0%B8)
    - [Создаём нового пользователя `orr`](#%D1%81%D0%BE%D0%B7%D0%B4%D0%B0%D1%91%D0%BC-%D0%BD%D0%BE%D0%B2%D0%BE%D0%B3%D0%BE-%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8F-orr)
    - [Задаём пользователю новый пароль](#%D0%B7%D0%B0%D0%B4%D0%B0%D1%91%D0%BC-%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8E-%D0%BD%D0%BE%D0%B2%D1%8B%D0%B9-%D0%BF%D0%B0%D1%80%D0%BE%D0%BB%D1%8C)
    - [Делаем пользователю orr право на пользование SUDO.](#%D0%B4%D0%B5%D0%BB%D0%B0%D0%B5%D0%BC-%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D1%82%D0%B5%D0%BB%D1%8E-orr-%D0%BF%D1%80%D0%B0%D0%B2%D0%BE-%D0%BD%D0%B0-%D0%BF%D0%BE%D0%BB%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-sudo)
  - [Как изменить размер tmp (tmpfs) налету](#%D0%BA%D0%B0%D0%BA-%D0%B8%D0%B7%D0%BC%D0%B5%D0%BD%D0%B8%D1%82%D1%8C-%D1%80%D0%B0%D0%B7%D0%BC%D0%B5%D1%80-tmp-tmpfs-%D0%BD%D0%B0%D0%BB%D0%B5%D1%82%D1%83)
  -  [Управляем тактовой частотой процессора](#%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D1%8F%D0%B5%D0%BC-%D1%82%D0%B0%D0%BA%D1%82%D0%BE%D0%B2%D0%BE%D0%B9-%D1%87%D0%B0%D1%81%D1%82%D0%BE%D1%82%D0%BE%D0%B9-%D0%BF%D1%80%D0%BE%D1%86%D0%B5%D1%81%D1%81%D0%BE%D1%80%D0%B0)
  - [ЗАГРУЗЧИКИ Системы](#%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D1%87%D0%B8%D0%BA%D0%B8-%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B)
    - [Initramfs](#initramfs)
    - [GRUB](#grub)
    - [Установка rEFInd](#%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0-refind)
  - [Подключение к сети OrrHome после перезагрузки](#%D0%BF%D0%BE%D0%B4%D0%BA%D0%BB%D1%8E%D1%87%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BA-%D1%81%D0%B5%D1%82%D0%B8-orrhome-%D0%BF%D0%BE%D1%81%D0%BB%D0%B5-%D0%BF%D0%B5%D1%80%D0%B5%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D0%BA%D0%B8)
  - [SOUND - PipeWire](#sound---pipewire)
  - [reflector](#reflector)
  - [Установка менеджера отображения GDM + GNOME + Wyland + PipeWire](#%D1%83%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0-%D0%BC%D0%B5%D0%BD%D0%B5%D0%B4%D0%B6%D0%B5%D1%80%D0%B0-%D0%BE%D1%82%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D1%8F-gdm--gnome--wyland--pipewire)
  - [Загрузчик системы bootctl](#%D0%B7%D0%B0%D0%B3%D1%80%D1%83%D0%B7%D1%87%D0%B8%D0%BA-%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D1%8B-bootctl)


# Установка Arch Linux

[>>> Ссылка на репозиторий с вариантом установочного скрипта Arch Linux <<<](https://github.com/tz4678/arch-installer "Создает на SSD разделы, устанавливает Arch в раздел с BTRFS, ставит Chromium (так же включает аппаратное ускорение для видео), Telegram, VS Code, Tor Browser и кучу разных утилит. Так же ставятся шрифты, темы, иконки, курсоры. Управление снапшотами осуществляется через Snapper. Он хранит снапшоты за последние три дня. Снапшоты создаются только для разделов `/` и `/home`. Управление файлами подкачки осуществляется через Systemd-Swap, который автоматически в случае необходимости создает файлы подкачки в `/var/swap` (находится на отдельном вольюме, чтобы не забивать снапшоты мусором).")

## Подготовка к установке

Качаем [ISO-образ Arch Linux](https://archlinux.org/download/)

### Установочная Флешка Вариант 1 - VENTOY

Качаем VENTOY из [официального вэб сайта программы](https://www.ventoy.net/en/download.html "Ventoy — Это инструмент с открытым исходным кодом для создания загрузочного USB-накопителя для файлов ISO/WIM/IMG/VHD(x)/EFI.") или из [GitHub репозитория Ventoy](https://github.com/ventoy/Ventoy "Ventoy — Это инструмент с открытым исходным кодом для создания загрузочного USB-накопителя для файлов ISO/WIM/IMG/VHD(x)/EFI.")

![Ventoy](https://user-images.githubusercontent.com/12753171/171402454-823a41ce-7f53-4670-bbfc-0cf179e35f4f.png "Ventoy - Удобная программа для сбора коллекции с образами установочных дисков на одном USB флешки")

Выбираем `Option --> Partition style --> GPT` как на скрине. Копируем/Перемещаем скачанный ранее ISO-образ Arch Linux в корень на созданном разделе флешки как обычный файл.

### Установочная Флешка Вариант 2 - dd & RUFUS

Для создания загрузочной флешки в Linux клонируем ранее скачанный ISO-образ Arch Linux при помощи команды из консоли:

```bash
$ sudo dd if=/path/to/iso of=/dev/sdX bs=8M status=progress; sync
```

> Где `sdX` &ndash; имя нашего USB устройства. Перегружаемся после удачного завершения операции.

В Windows для создания загрузочной флешки можно использовать [RUFUS](https://rufus.ie/).

![image](https://user-images.githubusercontent.com/41215002/53678080-21867b80-3ccb-11e9-87a8-a4d028153a53.png)


## Загрузка с установочной флешки Live System ArchLinux 

Для изменении приоритета загрузки в BIOS/UEFI после перезагрузки при появлении логотипа жмем клавиши `F2` /  `F12` / `Del` (в зависимости от производителя).


Во вкладке `Boot` отключаем `Secure Boot`. Это виндовое изобретение, которое не позволяет запускать неподписанные **EFI**. Можно еще включить `Launch CSM` / `CMS Boot` / `CMS OS` / `Legacy OS` для возможности загрузки с устройств, содержащих метку **MBR** (может потребоваться, например, для установки Windows 7). На материнках ASUS нужно CSM (режим поддержки устаревших операционных систем) установить в auto. Далее меняем приоритет загрузки устройств, делая флешку первой. Сохраняем изменения и выходим.


ПЕРЕЗАГРУЗКА

### Начало установки

Вы попадете в Live System ArchLinux. Загрузится виртуальная консоль (терминал), в котором вы будете вводить команды. Во время установки, вы работаете от имени суперпользователя (root).


Инструкцию по установке Arch Linux можно посмотреть так:

```bash
less ~/install.txt
```

Небольшой лайфхак: во время установки можно переключаться между терминалами с помощью `Ctrl+Alt+F1..6`. Если мы нажмем `Ctrl+Alt+F2` откроется второй терминал (по-умолчанию мы работаем в первом) и потребуется ввести пароль `root`, во втором терминале мы можем открыть инструкцию и периодически подсматривать ее, переключаясь между терминалами.

### Проверка режима загрузки

Чтобы проверить режим загрузки ((UEFI) EFI GPT или BIOS MBR), просмотрите содержимое каталога [efivars](https://wiki.archlinux.org/title/Efivars "Efivars"):

> ls /sys/firmware/efi/efivars

Если содержимое отображается без каких-либо ошибок, система загружена в режиме UEFI. Если же такого каталога не существует, возможно, система загружена в режиме [BIOS](https://en.wikipedia.org/wiki/ru:BIOS "wikipedia:ru:BIOS") или [CSM](https://en.wikipedia.org/wiki/Compatibility_Support_Module "wikipedia:Compatibility Support Module").

### Настройка сети

При подключении от кабеля ничего настраивать не надо. Настройка wifi требует ввода пары команд. В моем случае следующие команды были полезны:


Выводит на экран список сетевых адаптеров.
```
iwconfig
```
или полную информацию
```
ip a
```
Выводит список доступных сетей:
```
sudo iw dev wlan0 scan | less
```
для выхода из командной строки `q`


Включает сетевой адаптер если он выключен:
```
sudo ip link set wlan0 up
```

### Подключение к сети “OrrHome”

Если внешний USB Wifi Adapter:
```
iwconfig wlan0 essid OrrHome
```
Если встроенный Wifi Adapter:
```bash
$ iwctl

# Получим список сетевых интерфейсов
[iwd]# device list
                           Devices
-------------------------------------------------------------
  Name          Address          Powered    Adapter    Mode
-------------------------------------------------------------
  wlan0         ...              on         ...        ...

# Сначала просканируем сети
[iwd]# station <interface> scan

# А потом посмотрим все сети к которым можно подключиться
[iwd]# station <interface> get-networks
                               Available networks                             *
--------------------------------------------------------------------------------
    Network name                    Security          Signal
--------------------------------------------------------------------------------
    ...  
    <sid>                           psk               ****

# Выключаем и заново включаем Wifi Adapter через кнопку на клавиатуре, дальше
# Подключаемся
[iwd]# station <interface> connect <sid>
[iwd]# station wlan0 connect OrrHome
[iwd]# exit
```

Если не помогли вышеуказанные варианты то попробуте следующие команды:
```
rfkill unblock wifi
wifi-menu
```
И наконец проверить соединение можно с помощью команды ping:
```bash
$ ping -c 3 www.google.com
```
## Разметка диска

Выбор файловой системы: 

Для Btrfs лучше всего подходит SSD.

Файловая система Btrfs может размещаться на одном и более устройствах/разделах. В Btrfs есть подтома с динамическим размером (по-сути ‒ обычные каталоги) и группы с помощью которых можно ограничивать размер подтомов. Главная фишка Btrfs ‒ это легковесные снапшоты и на диске хранятся только различия между оригиналом и накопленные изменения. Мы можем периодически делать снапшоты подтомов, а потом в случае необходимости восстанавливать состояние системы, причем делать это налету.

В Btrfs нет привычных разделов, есть только подтома, отличительной особенностью которых является динамический размер (который можно ограничить с помощью quota), что роднит их с обычными каталогами. Снапшоты, если упускать некоторые детали, являются теми же самыми подтомами, те их можно монтировать и выполнять аналогичные операции.

### 1. Создаем загрузочный раздел 

 - Раздел должен быть минимум 100 мегобайт максимум 1 Gb и форматируем под FAT32 если это UEFI GPT или EFI ESP. Если BIOS MBR то загрузочного раздела создавать не нужно.
 - `mount /dev/sda1 /mnt/boot` (Монтируем)

### 2. Создаем BTRFS раздел. 

 - `cfdisk` (Отводим весь диск под систему и делаем `Bootable`. Далее: `Write`  и  `Quit`
 - `mkfs.btrfs /dev/sda2 -f` (Отформатировали)
 - `mount /dev/sda2 /mnt` (Монтируем)
 - `cd /mnt`  Перехоим в монтированный раздел чтобы создать субволюм. (Проверяем: `df -h`)
 - `btrfs subvolume create @` Создаем subvolume @. Выходит сообщение: Create subvolume './@'
 - `cd /` Выходим из /mnt, `umount /dev/sda2` размонтируем его.
 - Монтируем subvolume с компресией и автодефрагиентацией если дисk не SSD, если SSD то вместо автодефраг подключаем ssd. 
```
mount -o compress=zstd,autodefrag,subvol=@ /dev/sda2 /mnt
```

Обратите внимание на параметр compress ‒ это тип сжатия для данных, так же через двоеточие можно указать уровень сжатия. В данный момент лучшим методом сжатия является ZSTD с уровнем сжатия 3 (по-умолчанию).

 - Проверяем `fdisk -l` бутабле
 - Можно ещё `lsblk` или `df -h`
 - Теперь можно устанавливать линукс.

## УСТАНОВКА СИСТЕМЫ

> Убедитесь что /mnt смонтирован. Если раздел BTRFS, то монтирование нужно делать с компресией и сабволюмом @

```
pacstrap -i /mnt base linux
```

 - base 
 - base-devel 
 - linux-zen
 - linux-zen-headers
 - linux-firmware 
 - networkmanager 
 - btrfs-progs 
 - ntfs-3g
 - nano 
 - vim
 - mc
 - htop
 - tmux
 - tilix


## ГЕНЕРАЦИЯ FSTAB

Когда загрузка завершена, вы можете сгенерировать fstab файл Arch. Этот файл отслеживает разделы диска, которые необходимо монтировать в вашей системе.

```
genfstab -U -p /mnt >> /mnt/etc/fstab
```
Для просмотра созданного файла:
```
cat /mnt/etc/fstab
```

## ВХОД В CHROOT

Наша новая система установлена и для её дальнейшей настройки нам нужно войти в неё, но без перезагрузки, потому что загрузчик и сеть в ней ещё не готовы. Поэтому выполните:
```
arch-chroot /mnt
```
зашли внутрь нашей системы

## ЛОКАЛИЗАЦИЯ

> Язык, который использует система, определяется локалью. Помимо языка интерфейса локаль определяет и форматы чисел, времени, даты и некоторые другие региональные особенности.

Для поддержки русского и/или других языков необходимо раскомментировать соответствующие строки (локали) в файле `/etc/locale.gen`. Откройте файл для редактирования:
```
nano /etc/locale.gen
```
Я раскомментировал строки:
```
en_US.UTF-8 UTF-8 
ru_RU.UTF-8 UTF-8
az_AZ UTF-8
```

> Сохраните изменения (`Ctrl + O`) и закройте файл (`Ctrl + X`).

Теперь генерируем локали. Для этого выполняем команду:
```
locale-gen
```
Установим переменную LANG в файле*/etc/locale.conf*. Создадим файл*/etc/locale.conf*(используем редактор nano):
```
nano /etc/locale.conf
```
Введите текст:
```
LANG=ru_RU.UTF-8
```

> Сохраните изменения (`Ctrl + O`) и закройте файл (`Ctrl + X`).


Также добавим русскую раскладку клавиатуры для консоли и шрифт с поддержкой кириллицы:
```
nano /etc/vconsole.conf
```
Введите строки:
```
KEYMAP=ru
FONT=cyr-sun16
```

> Сохраните изменения (Ctrl + O) и закройте файл (Ctrl + X).

## ЧАСОВОЙ ПОЯС

> Указываем часовой пояс с помощью символической ссылки на него в файле `/etc/localtime` для настройки часового пояса:
```
ln -sf /usr/share/zoneinfo/Asia/Baku /etc/localtime
```

СПОСОБ ХРАНЕНИЯ ТАЙМЕРА


Выполним`hwclock`, чтобы сгенерировать файл `/etc/adjtime`, в котором хранятся соответсвующие настройки:
```
hwclock --systohc --localtime
```

## HOSTNAME & HOST

Создадим файл hostname, в котором введем имя компьютера.
```
nano /etc/hostname
```
Вводим имя компьютера, например:
```
OrrArch
```

> Сохраните изменения (Ctrl + O) и закройте файл (Ctrl + X).

Отредактируем файл /etc/hosts.

```
nano /etc/hosts
```
Содержимое файла должно иметь вид (вместо \*OrrArch\* укажите ваш hostname):
```
127.0.0.1 localhost
::1 localhost
127.0.1.1 OrrArch.localdomain OrrArch
```
## ПОЛЬЗОВАТЕЛИ

> Пока что вы работаете в роли пользователя root. Для безопасности измените пароль пользователя root на что-нибудь более безопасное.

Запустите команду passwd и введите новый пароль root.
```
passwd
```

### Создаём нового пользователя `orr`

```
useradd -m -g users -G wheel -s /bin/bash orr
```
 - `-g` - добавлене в группу users
 - `-G` - дополнительные группы,
 - группа `wheel` даёт возможность использовать команду `sudo` (Но для этого нужно отредактировать файл настроек `/etc/sudoers`).
 - `-s` задаёт командную оболочку
 - последний параметр - имя пользователя `orr`.

### Задаём пользователю новый пароль:
```
passwd orr
```

### Делаем пользователю orr право на пользование SUDO.

Редактируем файл настроек через 
```
visudo
```

> Использование visudo обязательно!
> Файл настроек `/etc/sudoers` **всегда** следует редактировать с помощью команды `visudo`. `visudo` блокирует файл `sudoers`, сохраняет изменения во временный файл и проверяет, что файл грамматически корректен, перед тем как скопировать его в `/etc/sudoers`.

Удаляем решотку перед: 
```
# %whell ALL=(ALL:ALL) ALL
```
> Сохраняемся `:w` выходим `:q`.

Для просмотра текущих настроек можно выполните:
```
sudo -ll
```
> (где “ll” это две буквы L (эль) маленькими)

Добавить пользователя в группу “wheel” можно с помощью команды usermod (если это не сделано ранее):
```
usermod -aG wheel orr
```

## [Как изменить размер tmp (tmpfs) налету](http://www.michurin.net/tools/remount-resize-tmpfs.html)

> Смотрим, сколько места у нас сейчас:

Это команда покажет все
```
df -h
```
Это команда покажет /tmp
```
df -h /tmp
```
Это команда покажет /dev/shm
```
df -h /dev/shm
```
или эта
```
df -h | grep -Ei 'shm|size'
```

А теперь увеличим нужную tmpfs в ручную без перезагрузки. Оно увеличится до следующей перезагрузки. Изменяем размер так:
```
mount -o remount,size=6G /tmp
```
и или
```
mount -o remount,size=6G /dev/shm
```
Если захотите увеличить на постоянной основе придется колдовать в файле `/etc/fstab` нужно будет добавить строчку: 
```
tmpfs /dev/shm tmpfs defaults,rw,nodev,nofail,noatime,nosuid,size=6G 0 0 0
```
и или 
```
tmpfs /tmp tmpfs defaults,rw,nodev,nofail,noatime,nosuid,size=6G 0 0 0
```

## [Управляем тактовой частотой процессора](http://www.michurin.net/tools/cpu-frequency.html)

Проверяем, какая сейчас у нас схема энергосбережения.
```
for CPUFREQ in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; do [ -f $CPUFREQ ] || continue; cat $CPUFREQ; done
```
Оперативно меняем на перформанс (работает до перезагрузки)
```
for CPUFREQ in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; do [ -f $CPUFREQ ] || continue; echo -n performance > $CPUFREQ; done
```
Чтобы работало на постоянной основе устанавливаем cpupower

```bash
# Установка для ArchLinux

$ pacman -S cpupower

# Установка для UBUNTU
# Перед установкой systemd-swap нужно  обновиться:

sudo apt-get update -y
sudo apt-get install -y cpupower
```
После чего редактируем файл /etc/default/cpupower
```
sudo nano /etc/default/cpupower
```
Изменяем следующюю строку как ниже:
```
governor='performance'
```
Сохраняемся выходим.

```bash
# Вводим в автозагрузку:

$ sudo systemctl enable cpupower.service

# или

$ sudo systemctl enable --now cpupower.service
```

Установка графического компонента:
```
yay -S cpupower-gui
```
Для проверки:
```
grep -E '^model name|^cpu MHz' /proc/cpuinfo
```
или
```
for CPUFREQ in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor; do [ -f $CPUFREQ ] || continue; cat $CPUFREQ; done
```

## ЗАГРУЗЧИКИ Системы

### Initramfs

Linux грузится с помощью образа **initramfs**: сначала файловая система монтируется в оперативную память (Initial-RAM-File-System), загружаются драйвера, монтируется реальная файловая система, и наконец мы получаем возможность войти в систему.

Редактируем настройки образа в файле `/etc/mkinitcpio.conf`:

```bash
micro /etc/mkinitcpio.conf
```

Добавляем в образ поддержку btrfs (не является частью ядра). `MODULES` и `BINARIES` должны выглядеть примерно так:

```conf
MODULES=(btrfs)
BINARIES=(/usr/bin/btrfs)
```

В хуки добавляем `encrypt btrfs` до filesystems:

```conf
HOOKS=(... encrypt btrfs filesystems ...)
```

Хуки — это скрипты с функцией `run_hook`, которые выполняются последовательно при загрузке **initrmafs**.

Пример:

```bash
$ cat /usr/lib/initcpio/hooks/btrfs
#!/usr/bin/ash

run_hook() {
    btrfs device scan
}

# vim: set ft=sh ts=4 sw=4 et:
```

* `encrypt` запрашивает пароль от зашифрованного устройства и добавляет его в `/dev/mapper`;
* `btrfs` — проверяет блочные устройства на наличие одноименной файловой системы;
* `filesystems` — монтирует файловую систему;
* ...

Изменим способ сжатия образа и уровень:

```bash
#COMPRESSION="lzma"
COMPRESSION="xz"
#COMPRESSION="lzop"
#COMPRESSION="lz4"

# COMPRESSION_OPTIONS
# Additional options for the compressor
COMPRESSION_OPTIONS=(-9)
```

> mkinitcpio это Bash скрипт используемый для создания начального загрузочного диска системы. Из mkinitcpio man page:

> ⚠ Это обязательный шаг 

Генерация:

```bash
mkinitcpio -p linux
```

### GRUB

> Алгоритм для BIOS MBR:

> Установка GRUB-BIOS, создание папки grub и создание конфига grub.cfg:
```
pacman -S grub-bios
mkdir -p /boot/grub
grub-mkconfig -o /boot/grub/grub.cfg
```
Устанавливаем загрузчик
```
grub-install /dev/sda
```
Выйдите из chroot размонтируйте разделы и перезагрузитесь:
```
exit
reboot
```
***
> Алгоритм для EFI:

> Устанавливаем ЗАГРУЗЧИК GRUB и efibootmgr:
```
pacman -S grub efibootmgr
```
Создаем загрузочный раздел. (Если две системы, если один линукс и все, то этот пункт опускаем и переходим к генерации настроек конфигурации GRUB)

> Размер раздела (boot, /dev/sda1) должен состовлять не менее 100 MB и не более 1024 MB (1 GB). У нас обычно 512 MB. И должен быть загрузочным (c флагом EFI System).

Форматируем под `FAT32` и создаем папку.
```
mkfs.fat32 /dev/sda1
mkdir -p /boot
mkdir -p /boot/efi
```
Монтиуем загрузочный раздел.
```
mount /dev/sda1 /mnt/boot
```
Генерируем настройки конфигурации GRUB на разделе `/boot`.
```
grub-install --target=x86_64-efi  --bootloader-id=grub --efi-directory=/boot/efi
```
```
grub-mkconfig -o /boot/grub/grub.cfg
```
Выйдите из chroot размонтируйте разделы и перезагрузитесь:
```
exit
reboot
```
В этом примере загрузочный раздел EFI смонтирован в /boot. Стартовый образ будет установлен в /boot/grub/grubx64.efi, конфиг загрузчика должен быть в /boot/grub/grub.cfg, а модули в каталоге /boot/grub/x86_64-efi/.

### Загрузчик системы bootctl

Загружаться мы будем через systemd-boot. Для этого установим EFI:

```bash
bootctl install
```

Создаем загрузочную запись. Для начала сохраним PARTUUID шифрованного раздела в конфиг, так как его запомнить проблематично:

```bash
blkid -o value -s PARTUUID /dev/nvme0n1p2 > /boot/loader/entries/arch-ecrypted.conf
```

При монтировании через `/etc/fstab` лучше использовать **UUID**, так как они уникальны (**PARTUUID** уникален только для **GPT** таблицы).  Жесткие диски типа `/dev/sda` или `/dev/sdb`  могут изменить буквы при переподключении. Это правило не распространяется на [виртуальные блочные устройства](https://ru.wikipedia.org/wiki/Device_mapper) типа `/dev/mapper/cryprt`.

Отредактируем конфиг:

```bash
micro /boot/loader/entries/arch-ecrypted.conf
```

Он должен выглядеть примерно так:

```conf
title   Encrypted Arch Linux
initrd  /amd-ucode.img
initrd  /initramfs-linux.img
linux   /vmlinuz-linux
options cryptdevice=PARTUUID=fa65a43e-eb75-48f0-aee1-975a50c2e00d:cryptroot:allow-discards root=/dev/mapper/cryptroot rootflags=subvol=/@ rw nvme_core.default_ps_max_latency_us=0
```

* Параметр `nvme_core.default_ps_max_latency_us=0` нужен для некоторых моделей **SSD M.2**. Без него файловая система через неопределенное время переходит в `read only`.
* `initrd  /amd-ucode.img` - это подгрузка микрокодов процессора для исправления различных уязвимостей. `/amd-ucode.img` заменяем на `/intel-ucode.img`.

Установите микрокоды проца (в зависимости от производителя):

```bash
pacman -Sy amd-ucode
# либо
pacman -Sy intel-ucode
```

Настроим загрузчик:

```bash
micro /boot/loader/loader.conf
```
```conf
timeout 4
default arch-ecrypted.conf
console-mode max
editor no
```


### Установка rEFInd

> Немного о главных возможностях.
> Поддержка графического и текстового режима меню. Возможность установки собственных изображений для иконок меню и фонового изображения. Работа с файловыми системами ISO-9660, NTFS, HFS+, ext4fs, и Btrfs. Загрузка других EFI загрузчиков и приложений. Загрузка BIOS загрузчиков. Авто-определение имеющихся EFI и BIOS загрузчиков. Возможность повторного сканирования устройств (если к примеру подключили новое устройство).

 - Ставим windows и archlinux.
 - [Ставим rEFInd](https://wiki.archlinux.org/title/REFInd "Он разработан так, чтобы не зависеть от платформы и упростить загрузку нескольких операционных систем."). (Можно его поставить ещё раньше) (sudo pacman -S refind) 
 - [refind-mkdefault](http://manpages.ubuntu.com/manpages/bionic/man8/refind-mkdefault.8.html "Установить rEFInd как параметр загрузки EFI по умолчанию")
 - Удаляем папку BOOT из `/boot/EFI` (Её создает винда)
 - Переименовываем папку `Microsoft` на `Windows` по пути `/boot/EFI` и все что в папке `/boot/EFI/Microsoft/BOOT` перемещаем в `/boot/EFI/Windows`. Одним словом, делаем так чтобы виндовс потерял свой загрузчик, но мы его не удаляем, чтобы rEFInd в дальнейшем мог его найти и добавить в свой список.
 - Виндовс больше не загружается.
 - rEFInd находит все системы из папки `/boot/EFI`
 - Далее конфигурируем и настраиваем rEFInd под себя.
 - Пользуемсю! 😃

> INFO

```
menuentry "Arch Linux" {
    icon /EFI/refind/icons/os_arch_.png
    volume Arch Linux
    loader /vmlinuz-linux
    initrd /initramfs-linux.img
    options "root=UUID=39712764-cbc7-486f-83de-7eae9b8b4120 rw rootflags=subvol=@  loglevel=3 quiet"
}
```

 - `icon` - фал иконки и путь к нему
 - `volume` - Название для нас. Этот параметр не имеет значения дл я запуска.
 - `loader` - Ядро
 - `initrd` - имедж ядра
 - `options` - Диск, раздел и параметры запуска раздела.

> Полная инфа находиться [тут](https://www.rodsbooks.com/refind/configfile.html "Настройка диспетчера загрузки rEFInd")

# Подключение к сети OrrHome после перезагрузки:
Стартуем NetworkManager:
```
sudo NetworkManager
```
Команда для просмотра адаптеров
```
nmcli device show
```
Команда для поднятия адаптера
```
sudo ip link set wlp16s0 up
```
Комана для просмотра состояния адаптера
```
ip link show wlp16s0
```
> На включённое состояние интерфейса указывает слово UP в BROADCAST,MULTICAST,UP,LOWER_UP, а не надпись state DOWN.  
Команда для просмотра активных сетей
```
nmcli device wifi list
```
Во многих ноутбуках присутствует аппаратный переключатель (или кнопка) питания беспроводной карты, однако она может быть также заблокирована и ядром. Этим можно управлять через rfkill. Используйте rfkill, чтобы посмотреть текущий статус:
```
rfkill list
```
Если карта заблокирована аппаратно (hard blocked), используйте переключатель (кнопку), чтобы разблокировать её. Если же карта заблокирована не аппаратно, a программно (soft blocked), используйте следующую команду:
```
rfkill unblock wifi
```
Команда для просмотра состояния адаптеров
```
nmcli device
```
Команда для подключения к сети OrrHome
```
sudo nmcli device wifi connect OrrHome
```
Пингуем. Если все норм то вводим подключение в автозагрузку:
```
sudo systemctl enable NetworkManager
```
Перезанружаемся `sudo reboot` и проверяем соединение.

СЕТЬ и настройки из графического интерфейса.

Наше Интернет-подключение управляется через командную строку, но если вы хотите управлять вашими сетевыми соединениями из графического интерфейса, то вам нужно установить и задействовать пакет Network Manager (сетевой менеджер). Также установите пакет net-tools для расширенных сетевых команд. Из графического интерфейса откройте терминал и запустите следующие команды:

```bash
$ sudo pacman -Syu
$ sudo pacman -S network-manager-applet net-tools

## Чтобы посмотреть ваши сетевые интерфейсы наберите:

$ ip a

## Если вам нужна поддержка OpenVPN в Network Manager, то выполните команду:

$ sudo pacman -S networkmanager-openvpn

## Запустите и добавьтет в автозагрузку Network Manager:

$ sudo systemctl start NetworkManager
$ sudo systemctl enable NetworkManager
```
Теперь протестируйте интернет подключение снова, запустив команду ping

## SOUND - PipeWire

```
sudo pacman -S pipewire pipewire-alsa pipewire-pulse gst-plugin-pipewire pipewire-jack
```

## reflector 
для автоматической настройки самых быстрых зеркал перед каждым обновлением.

```
sudo pacman -S reflector
sudo systmectl enable reflector.service
sudo pacman -Syy
```

## Установка менеджера отображения GDM + GNOME + Wyland + PipeWire

Достаточно поставить gdm и он потянет за собой минимальный GNOME + Wyland + PipeWire
```
sudo pacman -S gdm tilix
```
Включение и запуск GDM (GNOME):
```
sudo systemctl start gdm
```
Для дальнейшей настройки автоматического входа в систему:
```zsh
sudo systemctl enable gdm
sudo systemctl enable NetworkManager
exit
reboot
```

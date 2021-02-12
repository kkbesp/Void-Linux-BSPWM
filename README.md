# Void Linux | base glibc

## **Desktop screenshots | Скриншоты рабочего стола**


![screen](https://i.imgur.com/FDtPuwL.png)


![screen1](https://i.imgur.com/AsRMdSX.png()


![screen2](https://i.imgur.com/qAK58Gv.png)


## **Installing**
Run these commands in the terminal:

   `sudo xbps-install -Sy git`  


   `git clone https://github.com/kkbesp/dots.git`  


   `cd dots`   


   `bash install.sh`  

**Note**
1. Telegram theme installation link - https://t.me/addtheme/kkbesp
2. After executing the script you should
`sudo reboot`


**Aliases**  
Configuration file - ~/.zshrc


`xbi` = `sudo xbps-install -S`   *Installing the package*


`xbu` = `sudo xbps-install -Su`   *System update*


`xbr` = `sudo xbps-remove`   *Removing a package*


`xbo` = `sudo xbps-remove -Oo`   *Removing orphans and package cache* 


**Key combinations**


***Run programs***  
Configuration file - ~/.config/sxhkd/sxhkdrc

Open terminal (st)  
`super` + `enter`

Open program launcher manager (rofi)  
`alt` + `d`

Open firefox  
`alt` + `w`

Open telegram  
`alt` + `m`

Take a screenshot of the entire screen  
`print`

Capture a screenshot of the highlighted area  
`super` + `print`

Take a screenshot after 5 seconds  
`super` + `alt` + `print`


***Management of bspwm***  
The configuration file is ~/.config/sxhkd/sxhkdrc

Hide/show polybar  
`super` + `ctrl` + `p`

Exit bspwm  
`super` + `alt` + `q`

Restart from bspwm  
`super` + `alt` + `r`

Close the window  
`super` + `q`

Change the window `super` + `alt` + `q`  
`super` + `shift` + `h,j,k,l`  
`super` + `shift` + `arrows`

Change the indentation of windows on the current desktop  
`super` + `mouse wheel`

Change window indents globally  
`super` + `alt` + `mouse wheel

Change window modes (pseudo-tiling, floating, tiling, full-screen)  
`super` + `a,s,d,f`

Changing window modes (tiling, floating)  
`alt` + `space`

Change window focus  
`alt` + `shift` + `tab`  
`super` + `h,j,k,l`  
`uper` + `arrows`  

Move the window to another desktop    
`super` + `shift` + `digit`

Change the desktop  
`super` + `digit`

Change window size  
`super` + `right mouse button`  
`super` + `alt` + `h,j,k,l`  

Moving the floating window  
`super` + `left mouse button`  


## **Установка**
Выполните эти команды в терминале:

  `sudo xbps-install -Sy git`  


  `git clone https://github.com/kkbesp/dots.git`  


   `cd dots`  


   `bash install.sh`  



**Примечание**
1. Ссылка для установки telegram темы - https://t.me/addtheme/kkbesp
2. После выполнения скрипта выполнить перезагрузку `sudo reboot`  


**Алиасы**  
Конфигурационный файл - ~/.zshrc


`xbi` = `sudo xbps-install -S`   *Установка пакета*  


`xbu` = `sudo xbps-install -Su`   *Обновление системы*


`xbr` = `sudo xbps-remove`   *Удаление пакета*


`xbo` = `sudo xbps-remove -Oo`   *Удаление сирот и кэша пакетов*


**Комбинации клавиш**


***Запуск программ***  
Конфигурационный файл - ~/.config/sxhkd/sxhkdrc


Открыть терминал (st)  
`super` + `enter`

Открыть менеджер запуска программ (rofi)  
`alt` + `d`

Открыть firefox  
`alt` + `w`

Открыть telegram  
`alt` + `m`

Сделать скриншот всего экрана  
`print`

Сделать скриншот выделенной области  
`super` + `print`

Сделать скришот спустя 5 секунд  
`super` + `alt` + `print`


***Управление bspwm***  
Конфигурационный файл - ~/.config/sxhkd/sxhkdrc

Скрыть/показать polybar  
`super` + `ctrl` + `p`

Выйти из bspwm  
`super` + `alt` + `q`

Перезапустить из bspwm  
`super` + `alt` + `r`

Закрыть окно  
`super` + `q`

Поменять окна местати  
`super` + `shift` + `h,j,k,l`  
`super` + `shift` + `стрелки`

Изменить отступы окон на текущем рабочем столе  
`super` + `колёсико мыши`

Изменить отступы окон глобально  
`super` + `alt` + `колёсико мыши`

Изменение режимов окна (псевдотайлинг, плавающий, тайлинг, полноэкранный)  
`super` + `a,s,d,f`

Изменение режимов окна (тайлинг, плавающий)  
`alt` + `space`

Изменение фокуса окна  
`alt` + `shift` + `tab`  
`super` + `h,j,k,l`  
`super` + `стрелки`  

Переместить окно на другой рабочий стол    
`super` + `shift` + `цифра`

Сменить рабочий стол  
`super` + `цифра`

Изменение размера окон  
`super` + `правая кнопка мыши`    
`super` + `alt` + `h,j,k,l`  

Перемещение плавающего окна  
`super` + `левая кнопка мыши`

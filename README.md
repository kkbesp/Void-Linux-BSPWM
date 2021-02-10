# Void Linux | base, glibc

**Описание | Description**
Мои личные конфигурационные файлы и установочный скрипт для void linux glibc + bspwm. Собирал сам с разных уголков интернета. Хочу выразить благодарность ctlos и Алексу лично, у него черпал вдохновение и решил перенести на void.


My personal configuration files and installation script for void linux glibc + bspwm. Collected them myself from different parts of the Internet. I would like to thank ctlos and alex personally, I got inspiration from him and decided to transfer it to void


For contact and suggestions for improvement |  
Для связи и предложений по улучшения - https://t.me/kkbesp


## **Installing**
Run these commands in the terminal:

   `sudo xbps-install -Sy git`  


   `git clone https://github.com/kkbesp/dots.git`  


   `cd dots`   


   `chmod +x install.sh`  


   `bash install.sh`  

**Note**.
1. When you see this image, press `n`  
*The script is running and changing the shell will require you to run it again!*
![enter image description here](https://i.imgur.com/ow2BU9x.png)  
2. Telegram theme installation link - https://t.me/addtheme/kkbesp
3. After executing the script you should
`sudo reboot`

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
`uper` + `print`

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


   `chmod +x install.sh`  


   `bash install.sh`  



**Примечание**
1. При виде данного изображения нажать `n`  
*Скрипт запущен и смена шелла потребует повторного его запуска!*
![enter image description here](https://i.imgur.com/ow2BU9x.png)  
2. Ссылка для установки telegram темы - https://t.me/addtheme/kkbesp
3. После выполнения скрипта выполнить перезагрузку `sudo reboot`  


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

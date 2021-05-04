# QChia
Скрипт для бесконечного запуска засева.

Как настроить и запустить:
- Скачать файл `Queue1.cmd`
- Отредактировать содержимое:
- - `SET queue_n=1` - номер очереди, пока оставляем `1`
- - `SET address=4058229495` - меняем на ваш адрес кошелька, можно прочитать в разделе **Keys** основной программы GUI
- - `SET temp_disk=R` и `SET dest_disk=Q` имена дисков SSD и HDD соответственно
- - параметры `plot_size`, `RAM`, `CPU`, `bucket` меняем на свое усмотрение,  смысл ясен из названия (CPU имеется ввиду потоки)
- - `app_ver=1.1.3` это версия основной программы, менять при обновлении GUI
- Сохраняем изменения в Queue1.cmd, размножаем в Queue2.cmd, Queue3.cmd... в каждом файле меняем номер очереди  `SET queue_n=2`, `SET queue_n=3` и т.д.
- Запускаем каждую очередь.
Если понадобится мягко остановить засев, например перед обновлением, переименуйте файл `_stop.cmd` в `stop.cmd`. Можно просто создать пустой файл с именем `stop.cmd`, результат одинаковый - очередь после выполнения текущего засева остановится.

Заходите на наш Discord сервер http://chia.net.ru/

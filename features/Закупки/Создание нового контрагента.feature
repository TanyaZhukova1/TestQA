﻿#language: ru

@tree

Функционал: проверка создания клиента

Как оператор я хочу
создать клиента
чтобы ввести в клиентскую базу  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка создания клиента
* Открытие формы создания клиента
	И В командном интерфейсе я выбираю "Продажи" "Контрагенты"
	Когда открылось окно "Контрагенты"
	И в таблице 'Список' я выбираю текущую строку	
	Тогда открылось окно "Контрагенты"
	И я нажимаю на кнопку с именем 'ФормаСоздать'
* Заполнение наименования клиента
	И в поле с именем 'Наименование' я ввожу текст "Тюльпан"
	И из выпадающего списка с именем 'ВидЦен' я выбираю точное значение "Мелкооптовая"
* Заполнение номера телефона клиента
	И в поле с именем 'Телефон' я ввожу текст "89999999999"
* Сохранение
	И я нажимаю на кнопку с именем 'ФормаЗаписать'
* Проверка сохранения клиента по коду 
И я запоминаю значение поля "Код" как "Код"
И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
И я жду закрытия окна "Лютик (Контрагент)" в течение 20 секунд
Тогда таблица 'Список' содержит строки:
	| 'Код'       |
	| '$Код$' |
Для базы данных Академия создайте такие запросы:
№1
Вывести таблицу кафедр, но расположить ее поля в 
обратном порядке.
+ сортировка по названию
№2
Вывести названия групп и их рейтинги с уточнением 
имен полей именем таблицы.
+ сортировка по рейтингу от большего к меньшему + первые 3 
№5
Вывести фамилии преподавателей, которые являются 
профессорами и ставка которых превышает 1050.
№6
Вывести  названия  кафедр,  фонд  финансирования  
которых от 11000 до 25000
№7
Вывести  названия  факультетов  кроме  факультета  
“Computer Science”.

Описание
База данных Академия (Academy) содержит информа­
цию о сотрудниках и внутреннем устройстве академии.Домашнее задание
Преподаватели, читающие лекции в академии представ­
лены в виде таблицы Преподаватели (Teachers), в которой 
собрана основная информация, такая как: имя, фамилия, 
данные о зарплате, а также дата приема на работу.
Также в базе данных присутствует информация о 
группах, хранимая в таблице Группы (Groups). Данные об 
факультетах и кафедрах содержатся в таблицах Факуль­
теты (Faculties) и Кафедры (Departments) соответственно.
Таблицы
Ниже представлено детальное описание структуры 
каждой таблицы.
Кафедры (Departments) ■ Идентификатор (Id). Уникальный идентификатор 
кафедры. ▶ Тип данных — int. ▶ Авто приращение. ▶ Не может содержать null­значения. ▶ Первичный ключ. ■ Финансирование (Financing). Фонд финансирования 
кафедры. ▶ Тип данных — money. ▶ Не может содержать null­значения. ▶ Не может быть меньше 0. ▶ Значение по умолчанию — 0. ■ Название (Name). Название кафедры. ▶ Тип данных — nvarchar(100).Домашнее задание
 ▶ Не может содержать null­значения. ▶ Не может быть пустым. ▶ Должно быть уникальным.
Факультеты (Faculties) ■ Идентификатор (Id). Уникальный идентификатор 
факультета. ▶ Тип данных — int. ▶ Авто приращение. ▶ Не может содержать null­значения. ▶ Первичный ключ. ■ Декан (Dean). Декан факультета. ▶ Тип данных — nvarchar(max). ▶ Не может содержать null­значения. ▶ Не может быть пустым. ■ Название (Name). Название факультета. ▶ Тип данных — nvarchar(100). ▶ Не может содержать null­значения. ▶ Не может быть пустым. ▶ Должно быть уникальным.
Группы (Groups) ■ Идентификатор (Id). Уникальный идентификатор 
группы. ▶ Тип данных — int. ▶ Авто приращение. ▶ Не может содержать null­значения. ▶ Первичный ключ.Домашнее задание
 ■ Название (Name). Название группы. ▶ Тип данных — nvarchar(10). ▶ Не может содержать null­значения. ▶ Не может быть пустым. ▶ Должно быть уникальным. ■ Рейтинг (Rating). Рейтинг группы. ▶ Тип данных — int. ▶ Не может содержать null­значения. ▶ Должно быть в диапазоне от 0 до 5. ■ Курс (Year). Курс (год) на котором обучается группа. ▶ Тип данных — int. ▶ Не может содержать null­значения. ▶ Должно быть в диапазоне от 1 до 5.
Преподаватели (Teachers) ■ Идентификатор (Id). Уникальный идентификатор 
преподавателя. ▶ Тип данных — int. ▶ Авто приращение. ▶ Не может содержать null­значения. ▶ Первичный ключ. ■ Дата трудоустройства (EmploymentDate). Дата приема 
преподавателя на работу. ▶ Тип данных — date. ▶ Не может содержать null­значения. ▶ Не может быть меньше 01.01.1990. ■ Ассистент (IsAssistant). Является ли преподаватель 
ассистентом. ▶ Тип данных — bit.Домашнее задание
 ▶ Не может содержать null­значения. ▶ Значение по умолчанию — 0. ■ Профессор (IsProfessor). Является ли преподаватель 
профессором. ▶ Тип данных — bit. ▶ Не может содержать null­значения. ▶ Значение по умолчанию — 0. ■ Имя (Name). Имя преподавателя. ▶ Тип данных — nvarchar(max). ▶ Не может содержать null­значения. ▶ Не может быть пустым. ■ Должность (Position). Должность преподавателя. ▶ Тип данных — nvarchar(max). ▶ Не может содержать null­значения. ▶ Не может быть пустым. ■ Надбавка (Premium). Надбавка преподавателя. ▶ Тип данных — money. ▶ Не может содержать null­значения. ▶ Не может быть меньше 0. ▶ Значение по умолчанию — 0. ■ Ставка (Salary). Ставка преподавателя. ▶ Тип данных — money. ▶ Не может содержать null­значения. ▶ Не может быть меньше либо равно 0. ■ Фамилия (Surname). Фамилия преподавателя. ▶ Тип данных — nvarchar(max). ▶ Не может содержать null­значения. ▶ Не может быть пустым.Домашнее задание
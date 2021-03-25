# Тестовое задание Rails

### Приложение реализовано с помощью:

>Ruby on Rails 6.1.3
> 
>SQLite3

### Необходимо реализовать API, через которое можно будет создавать дневники с записями. В приложении должен быть реализован следующий функционал:

>  ### Модель Diary
> 
> Поля:
> 
> title: string  Название дневника
> 
> Обязательное поле
> 
> expiration: datetime
> 
> Дата, после которой можно удалить дневник
> 
> Может быть назначена только у private дневников
> 
> kind: enum
> 
> Тип дневника, значение: public, private
> 
> Обязательное поле
> 
> ### Модель Note
> 
> Поля:text: text
> 
> Note связан с Diary one-to-many. 
> 
> У дневника много страниц, у страницы один дневник
> 
> Добавить CRUD операции для обоих моделей
> 
> Формат передачи данных - json
> 
> Подключить sidekiq, написать воркера, который будет в фоне раз в 10 минут удалять старые дневники
> 
> Подключить веб-интерфейс sidekiq и закрыть его Basic-авторизацией
> 
> В сидах генерировать 4 дневника с 3мя notes. У двух дневников expiration наступает через 10 минут
> 
> Интерфейс реализовывать не нужно, только API

### Контактная информация:

> email: tkorchmit@bk.ru
> 
> web site: https://vk.com/yaneshpala




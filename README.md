# Book Rate

Это сервис, в котором можно добавлять книги, писать отзывы на них и оценивать.

## Начало работы
Для локального запуска приложения используется Docker и Intellij: 
- Поэтому нужно скачать его с [официального сайта](https://www.docker.com/products/docker-desktop/). 
- Дальше вам нужно написать docker-compose up -d в консоли. После этого у вас в докере создастся контейнер с PostgreSQL
- Для запуска самого приложения вам нужно использовать идею. Зайдите в файл Server.scala и запустите функцию run

## Пример использования
Можете поиграться с данной коллекцией запросов в Postman - [API.postman.json](API.postman_book_rate.json)
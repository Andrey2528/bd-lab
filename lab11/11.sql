CREATE DATABASE `library fund`

/*создание основной таблицы*/
CREATE TABLE books(
    N INT NOT NULL AUTO_INCREMENT,
    id_code INT NOT NULL,
    NEW BOOLEAN,
    NAME VARCHAR(255) NOT NULL,
    price FLOAT NOT NULL,
    id_publishing INT NOT NULL,
    pages INT NOT NULL,
    FORMAT VARCHAR(30) NOT NULL,
    datee DATE NOT NULL,
    circulation INT,
    id_topic INT NOT NULL,
    category VARCHAR(255) NOT NULL,
    PRIMARY KEY(N)
);

/*Создание вспомогательной таблицы с темами*/
CREATE TABLE topic(
    id INT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(300) NOT NULL
);

/*Создание вспомогательной таблицы с кодами книг*/
CREATE TABLE CODE(
    id INT PRIMARY KEY AUTO_INCREMENT,
    CODE INT NOT NULL
); 

/*Заполнение таблицы CODE*/
INSERT INTO CODE(CODE)
VALUES(5141),(5127),(5110),(5199),(3851),(3932),(4713),(5217),(4829),(5170),(860),(44),(5176),(5462),(4982),(4687);

/*Заполнение таблицы topic*/
INSERT INTO topic(NAME)
VALUES('Використання ПК в цілому'),('Операційні системи'),('Програмування');

/*Заполнение таблицы books*/
INSERT INTO books(
    id_code,
    NEW,
    NAME,
    price,
    id_publishing,
    pages,
    FORMAT,
    datee,
    circulation,
    id_topic,
    category
)
VALUES(
    1,
    0,
    'Структуры данных и алгоритмы.',
    37.80,
    5,
    384,
    '70х100/16',
    '2000-09-29',
    5000,
    1,
    'Підручники'
),(
    2,
    0,
    'Автоматизация инженерно- графических работ',
    11.58,
    6,
    256,
    '70х100/16',
    '2000-06-15',
    5000,
    1,
    'Підручники'
),(
    3,
    0,
    'Аппаратные средства мультимедия. Видеосистема РС',
    15.51,
    1,
    400,
    '70х100/16',
    '2000-07-24',
    5000,
    1,
    'Інші операційні системи'
),(
    4,
    0,
    'Железо IBM 2001. ',
    30.07,
    2,
    368,
    '70х100/16',
    '2000-12-02',
    5000,
    1,
    'Інші операційні системи'
),(
    5,
    0,
    'Защита информации и безопасность компьютерных систем',
    26.00,
    4,
    480,
    '84х108/16',
    '1999-02-04',
    5000,
    1,
    'Інші операційні системи'
),(
    6,
    0,
    'Как превратить персональный компьютер в измерительный комплекс',
    7.65,
    7,
    144,
    '60х88/16',
    '1999-06-09',
    5000,
    1,
    'Інші книги'
),(
    7,
    0,
    'Plug- ins. Встраиваемые приложения для музыкальных программ',
    11.41,
    7,
    144,
    '70х100/16',
    '2000-02-22',
    5000,
    1,
    'Інші книги'
),(
    8,
    0,
    'Windows МЕ. Новейшие версии программ',
    16.57,
    8,
    320,
    '70х100/16',
    '2000-08-25',
    5000,
    2,
    'Windows 2000'
),(
    9,
    0,
    'Windows 2000 Professional шаг за шагом с СD',
    27.25,
    9,
    320,
    '70х100/16',
    '2000-04-28',
    5000,
    2,
    'Windows 2000'
),(
    10,
    0,
    'Linux Русские версии',
    24.43,
    7,
    346,
    '70х100/16',
    '2000-09-29',
    5000,
    2,
    'Linux'
),(
    11,
    0,
    'Операционная система UNIX',
    3.50,
    1,
    395,
    '84х100\16',
    '1997-05-05',
    5000,
    2,
    'Unix'
),(
    12,
    0,
    'Ответы на актуальные вопросы по OS/2 Warp',
    5.00,
    4,
    352,
    '60х84/16',
    '1996-03-20',
    5000,
    2,
    'Інші операційні системи'
),(
    13,
    0,
    'Windows Ме. Спутник пользователя',
    12.79,
    9,
    306,
    '-',
    '2000-10-10',
    5000,
    2,
    'Інші операційні системи'
),(
    14,
    0,
    'Язык программирования С++. Лекции и упражнения',
    29.00,
    4,
    656,
    '84х108/16',
    '2000-12-12',
    5000,
    3,
    'C&C++'
),(
    15,
    0,
    'Язык программирования С. Лекции и упражнения',
    29.00,
    4,
    432,
    '84х108/16',
    '2000-07-12',
    5000,
    3,
    'C&C++'
),(
    16,
    0,
    'Эффективное использование C++ .50 рекомендаций по улучшению ваших программ и проектов',
    17.60,
    7,
    240,
    '70х100/16',
    '2000-02-03',
    5000,
    3,
    'C&C++'
);

/*создание внешних ключей для полей id_topic, id_code*/
ALTER TABLE
    books ADD FOREIGN KEY(id_topic) REFERENCES topic(id) ON DELETE CASCADE;
ALTER TABLE
    books ADD FOREIGN KEY(id_code) REFERENCES CODE(id) ON DELETE CASCADE;
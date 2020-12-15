'''sql

--Задача 1
create user catperson;
alter user catperson superuser createrole createdb;

--Задача 2
create database catproject;

--Задача 3
alter database catproject owner to catperson

--Задача 4
create table cats
(
"id" SERIAL PRIMARY KEY,
"name" VARCHAR(15) not null,
"birthday" date not null,
"sex" varchar(6) not null,
"photo (url)" text not null,
"description" text not null,
"owner_phone" varchar(11) not null);

--Задача 5
insert into cats (
"name",
"birthday",
"sex",
"photo (url)",
"description",
"owner_phone"
)

values
('Марс', '2015-03-01'::date, 'муж', 'https://yandex.ru/images/search?from=tabbar&text=%D1%87%D0%B5%D1%80%D0%BD%D1%8B%D0%B9%20%D0%BA%D0%BE%D1%82&pos=0&img_url=https%3A%2F%2Fi.pinimg.com%2Foriginals%2F72%2Fdf%2Ffa%2F72dffa1d70f40190d09db7bc0e9cdf73.jpg&rpt=simage', 'черный, вредный', '89011111111'),
('Барсик', '2017-11-15'::date, 'муж', 'https://yandex.ru/images/search?from=tabbar&text=%D1%81%D0%B5%D1%80%D1%8B%D0%B9%20%D0%BA%D0%BE%D1%82&pos=0&img_url=https%3A%2F%2Fimg11.postila.io%2Fdata%2F9d%2Ff6%2F62%2F97%2F9df66297baee2e479507e09357d35bf1e293cdf1a066759f9de462d1fcb64611.jpg&rpt=simage', 'серый, добрый', '89022222222'),
('Мурзик', '2014-08-26'::date, 'муж', 'https://yandex.ru/images/search?from=tabbar&text=%D0%B1%D0%B5%D0%BB%D1%8B%D0%B9%20%D0%BA%D0%BE%D1%82&pos=18&img_url=https%3A%2F%2Fae01.alicdn.com%2Fkf%2FHTB1YxzEKXXXXXcaXpXXq6xXFXXXB%2Fanimals-white-cat-lovely-animal-5-Sizes-Home-Decoration-Canvas-Painting-Poster-Printing-Wall-Pictures.jpg&rpt=simage&rlt_url=http%3A%2F%2Fwww.topoboi.com%2Fpic%2F201412%2F2560x1440%2Ftopoboi.com-50722.jpg&ogl_url=https%3A%2F%2Fae01.alicdn.com%2Fkf%2FHTB1YxzEKXXXXXcaXpXXq6xXFXXXB%2Fanimals-white-cat-lovely-animal-5-Sizes-Home-Decoration-Canvas-Painting-Poster-Printing-Wall-Pictures.jpg', 'белый, любит есть', '89033333333'),
('Снич', '2016-05-11'::date, 'муж', 'https://yandex.ru/images/search?from=tabbar&text=%D1%80%D1%8B%D0%B6%D0%B8%D0%B9%20%D0%BA%D0%BE%D1%82&pos=1&img_url=https%3A%2F%2Fcs6.pikabu.ru%2Fpost_img%2Fbig%2F2017%2F10%2F10%2F5%2F1507620017120447095.jpg&rpt=simage', 'рыжий, писает мимо лотка', '89044444444'),
('Рык', '2012-03-30'::date, 'муж', 'https://yandex.ru/search/?text=%D0%BF%D1%8F%D1%82%D0%BD%D0%B8%D1%81%D1%82%D1%8B%D0%B9%20%D0%BA%D0%BE%D1%82&lr=213&clid=2186620&src=suggest_B', 'пятнистый, жрет нитки', '89055555555'),
('Маша', '2018-02-16'::date, 'жен', 'https://yandex.ru/images/search?from=tabbar&text=%D1%87%D0%B5%D1%80%D0%BD%D1%8B%D0%B9%20%D0%BA%D0%BE%D1%82&pos=22&img_url=https%3A%2F%2Fsun9-6.userapi.com%2Fc857328%2Fv857328759%2F114af7%2FT2k5Qx5DMDg.jpg&rpt=simage', 'черный, гулена', '89066666666'),
('Масяня', '2017-06-21'::date, 'жен', 'https://yandex.ru/images/search?from=tabbar&text=%D1%81%D0%B5%D1%80%D1%8B%D0%B9%20%D0%BA%D0%BE%D1%82&pos=8&img_url=https%3A%2F%2Fjooinn.com%2Fimages%2Fpussy-cat-2.jpg&rpt=simage', 'серый, социопат', '89077777777'),
('Мурка', '2016-09-22'::date, 'жен', 'https://yandex.ru/images/search?from=tabbar&text=%D0%B1%D0%B5%D0%BB%D1%8B%D0%B9%20%D0%BA%D0%BE%D1%82&pos=18&img_url=https%3A%2F%2Fae01.alicdn.com%2Fkf%2FHTB1YxzEKXXXXXcaXpXXq6xXFXXXB%2Fanimals-white-cat-lovely-animal-5-Sizes-Home-Decoration-Canvas-Painting-Poster-Printing-Wall-Pictures.jpg&rpt=simage', 'белый, любит смотреть в окно', '89088888888'),
('Вольха', '2015-05-13'::date, 'жен', 'https://yandex.ru/images/search?from=tabbar&text=%D1%80%D1%8B%D0%B6%D0%B8%D0%B9%20%D0%BA%D0%BE%D1%82&pos=30&img_url=https%3A%2F%2Favatars.mds.yandex.net%2Fget-pdb%2F939186%2F0cc32b78-ec09-4c9e-a33d-e4913d751673%2Fs1200&rpt=simage', 'рыжий, меланхолик', '89099999999'),
('Брыся', '2016-07-24'::date, 'жен', 'https://yandex.ru/search/?text=%D0%BF%D1%8F%D1%82%D0%BD%D0%B8%D1%81%D1%82%D1%8B%D0%B9%20%D0%BA%D0%BE%D1%82&lr=213&clid=2186620&src=suggest_B', 'пятнистый, любит играть', '89100506070');

--Задача 7
select * from cats where sex like '%муж%';
select * from cats where sex like '%жен%';

--Задача 8
select * from cats where "photo (url)" like '%jpg%'
union all
select * from cats where "photo (url)" like '%jpeg%';

--Задача 9
update cats
set birthday = '2016-08-07'::date
where id = 4;

--Задача 10
delete from cats
where id = 5;

--Задача 11
insert into cats (
"name",
"birthday",
"sex",
"photo (url)",
"description",
"owner_phone"
)

values
('Гав', '2020-09-17'::date, 'муж', 'https://yandex.ru/images/search?from=tabbar&text=%D1%81%D0%B5%D1%80%D1%8B%D0%B9%20%D0%BA%D0%BE%D1%82%D0%B5%D0%BD%D0%BE%D0%BA&p=2&pos=154&rpt=simage&img_url=https%3A%2F%2Fimg5.goodfon.ru%2Fwallpaper%2Foriginal%2F9%2F73%2Fkoshka-kotenok-seryi-malysh-chernyi-fon-kotionok-britanskii.jpg', 'серый, постоянно спит', '89118532154');

--Задача 12
alter table cats add column "chip (not obligation)" text default 0;

--Задача 13
update cats
set
"chip (not obligation)" = '3A8508'
where id = 3;

update cats
set
"chip (not obligation)" = '13BC02'
where id = 2;


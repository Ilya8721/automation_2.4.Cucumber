#language:ru

Функциональность: Авторизация

  # пример теста с одним набором параметров
  Сценарий: : Авторизация в личном кабинете (позитивный)
    Пусть открыта страница с формой авторизации "http://localhost:9999"
    Когда пользователь пытается авторизоваться с именем "vasya" и паролем "qwerty123"
    И пользователь вводит проверочный код 'из смс' "12345"
    Тогда происходит успешная авторизация и пользователь попадает на страницу 'Личный кабинет'

  # пример параметризированного теста
  Структура сценария: : Авторизация в личном кабинете (негативный)
    Пусть открыта страница с формой авторизации "http://localhost:9999"
    Когда пользователь пытается авторизоваться с именем <login> и паролем <password>
    И пользователь вводит проверочный код 'из смс' <code>
    Тогда появляется ошибка о неверном коде проверки
    Примеры:
      | login | password  | code  |
      | "vasya" | "qwerty123" | "00000" |
      | "vasya" | "qwerty123" | "11111" |


  Сценарий: : Перевод денег с карты 5559 0000 0000 0002 на карту 5559 0000 0000 0001 (позитивный)
    Пусть пусть пользователь залогинен с именем "vasya" и паролем "qwerty123"
    Когда пользователь переводит 5000 рублей с карты с номером 5559 0000 0000 0001 на свою 1 карту с главной страницы
    Тогда баланс его первой карты из списка на главной странице должен стать 15000 рублей
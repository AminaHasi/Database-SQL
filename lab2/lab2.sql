/* 1 Вивести значення наступних колонок: номер, код, новинка, назва, ціна, сторінки*/
SELECT number,cipher,new,title,price,pages FROM `first_work`;
/*2. Вивести значення всіх колонок*/
SELECT * FROM `first_work`;
/*3. Вивести значення колонок в наступному порядку: код, назва, новинка, сторінки, ціна, номер*/
SELECT cipher,title,new,pages,price,number FROM `first_work`;
/*4. Вивести значення всіх колонок 10 перших рядків*/
SELECT * FROM `first_work` LIMIT 10;
/*5. Вивести значення всіх колонок 10% перших рядків*/
SELECT * FROM `first_work` HAVING RAND() > 0.9;
/*6. Вивести значення колонки код без повторення однакових кодів*/
SELECT DISTINCT cipher FROM `first_work`;

/*7. Вивести всі книги новинки*/
SELECT * FROM `first_work` WHERE new = 'YES';

/*8. Вивести всі книги новинки з ціною від 20 до 30*/
SELECT * FROM `first_work` WHERE new = 'YES' AND 20<=price<=30;

/*9. Вивести всі книги новинки з ціною менше 20 і більше 30*/
SELECT * FROM `first_work` WHERE new = 'YES' AND 20>price>30;

/*10. Вивести всі книги з кількістю сторінок від 300 до 400 і з ціною більше 20 і менше 30*/
SELECT * FROM `first_work` WHERE 300< pages < 400 AND (price >20 AND price<30);

/*11. Вивести всі книги видані взимку 2000 року*/
SELECT * FROM `first_work` WHERE date BETWEEN '2000-01-01' AND '2000-03-01';

/*12. Вивести книги зі значеннями кодів 5110, 5141, 4985, 4241*/
SELECT * FROM `first_work` WHERE cipher = 5110 OR cipher = 5141 OR cipher = 4985 OR cipher = 4241;

/* 13. Вивести книги видані в 1999, 2001, 2003, 2005 */
SELECT * FROM `first_work` WHERE YEAR(date) = 1999
OR    YEAR(date) = 2001
OR    YEAR(date) = 2003
OR    YEAR(date) = 2005;

/*14. Вивести книги назви яких починаються на літери А-К*/
SELECT * FROM `first_work` WHERE  title LIKE 'А%' OR title LIKE 'Б%' OR title LIKE 'В%' OR title LIKE 'Г%' OR title LIKE 'Д%' OR title LIKE 'Е%' OR title LIKE 'Є%' OR title LIKE 'Ж%' OR title LIKE 'З%' OR title LIKE 'І%' OR title LIKE 'Ї%' OR title LIKE 'Й%' OR title LIKE 'К%' ;

/*15. Вивести книги назви яких починаються на літери "АПП", видані в 2000 році з ціною до 20*/
SELECT * FROM `first_work` WHERE title LIKE 'Ап%'AND YEAR(date) = 2000 AND price < 20;

/*16. Вивести книги назви яких починаються на літери "АПП", закінчуються на "е", видані в першій половині 2000 року*/
SELECT * FROM `first_work` WHERE title LIKE 'Ап%е 'AND date BETWEEN '2000-01-01' AND '2000-06-01';

/*17. Вивести книги, в назвах яких є слово Microsoft, але немає слова Windows*/
SELECT * FROM `first_work` WHERE title LIKE '%Microsoft%' AND title  NOT LIKE '%Windows%' ;

/*18. Вивести книги, в назвах яких присутня як мінімум одна цифра.*/
SELECT * FROM `first_work` WHERE  title REGEXP '[0-9]';

/*19. Вивести книги, в назвах яких присутні не менше трьох цифр.*/
SELECT * FROM `first_work` WHERE  title REGEXP  '([0-9].*){3}';

/* 20. Вивести книги, в назвах яких присутній рівно п'ять цифр.*/
SELECT * FROM `first_work` WHERE  title REGEXP  '([0-9].*){5}';

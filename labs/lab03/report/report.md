<meta http-equiv="Content-type" content="text/html;charset=utf-8">

---
		title: "Отчет по лабораторной работы №3"
		subtitle: "Архитектура компьютеров и Операционные системы"
		author: "Ван Сихэм Франклин О' Нил Джон (Миша)"
		group: "НПИбд-03-23"
		date: "13/10/2023"
		output: 
			word_document

## Bibliography

		bibliography: bib/cite.bib
		csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Generic otions

		lang: ru-RU
		toc-title: "Содержание"

## Pdf output format

		toc: true
		toc-own-page: true
		toc: true # Table of contents
		toc-depth: 2
		lof: true # List of figures
		lot: true # List of tables
		fontsize: 12pt
		linestretch: 1.5
		papersize: a4
		documentclass: scrreprt

## I18n polyglossia

		polyglossia-lang:
			name: russian
			options:
				- spelling=modern
				- babelshorthands=true
		polyglossia-otherlangs:
			name: english

## I18n babel

		babel-lang: russian
		babel-otherlangs: english

## Fonts

		mainfont: DejaVuSerif
		romanfont: Times New Roman
		sansfont: DejaVuSans
		monofont: DejaVuSansMono
		mainfontoptions: Ligatures=TeX
		romanfontoptions: Ligatures=TeX
		sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
		monofontoptions: Scale=MatchLowercase,Scale=0.9

## Biblatex

		biblatex: true
		biblio-style: "gost-numeric"
		biblatexoptions:
			- parentracker=true
			- backend=biber
			- hyperref=auto
			- language=auto
			- autolang=other*
			- citestyle=gost-numeric

## Pandoc-crossref LaTeX customization

		figureTitle: "Рис."
		tableTitle: "Таблица"
		listingTitle: "Листинг"
		lofTitle: "Список иллюстраций"
		lotTitle: "Список таблиц"
		lolTitle: "Листинги"

## Misc options

		indent: true
		header-includes:
			- \usepackage{indentfirst}
			- \usepackage{float} # keep figures where there are in the text
			- \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является освоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Теоретическое введение

## Базовые сведения о Markdown

Чтобы создать заголовок, используйте знак #, например:
 
![Заголовок](image/heading.jpg)

<br>

- Чтобы задать для текста полужирное начертание, заключите его в двойные звездочки:
This text is **bold**. (** **)<br>
- Чтобы задать для текста курсивное начертание, заключите его в одинарные звездочки:
This text is *italic*. (* *)<br>
- Чтобы задать для текста полужирное и курсивное начертание, заключите его в тройные звездочки:
- This is text is both ***bold and italic***. (*** ***)<br>
<hr>

Блоки цитирования создаются с помощью символа >:

> The drought had lasted now for ten million years, and the reign of the
		terrible lizards had long since ended. Here on the Equator, in the
		continent which would one day be known as Africa, the battle for existence
		had reached a new climax of ferocity, and the victor was not yet in sight.
		In this barren and desiccated land, only the small or the swift or the
		fierce could flourish, or even hope to survive.

Упорядоченный список можно отформатировать с помощью соответствующих цифр:

1.		First instruction 
	2. 		Sub-instruction
	3. 		Sub-instruction
4. 		Second instruction

Чтобы вложить один список в другой, добавьте отступ для элементов дочернего списка:

1. 		First instruction
2. 		Second instruction
3. 		Third instruction

Неупорядоченный (маркированный) список можно отформатировать с помощью звездочек или тире:

	* List item 1
	* List item 2
	* List item 3

Чтобы вложить один список в другой, добавьте отступ для элементов дочернего списка:

	- List item 1
	- List item A
	- List item B
	- List item 2

Синтаксис Markdown для встроенной ссылки состоит из части [link text], представляющей текст гиперссылки, и части (file-name.md) – URL-адреса или имени файла, на который дается ссылка: [link text](file-name.md) или
[link text](http://example.com/ "Необязательная подсказка")

Markdown поддерживает как встраивание фрагментов кода в предложение, так и их размещение между предложениями в виде отдельных огражденных блоков. Огражденные блоки кода — это простой способ выделить синтаксис для фрагментов кода. Общий формат огражденных блоков кода:

```
	language
	your code goes in here
```
<br>

## Оформление формул в Markdown

Внутритекстовые формулы делаются аналогично формулам LaTeX. Например, формула
sin2 (x) + cos2 (x) = 1 запишется как

	$$
	\sin^2 (x) + \cos^2 (x) = 1
	$$

Выключение формулы:

				sin2 (x) + cos2 (x) = 1 				(3.1)

со ссылкой в тексте «Смотри формулу ({-eq. 3.1}).» записывается как

	$$
	\sin^2 (x) + \cos^2 (x) = 1
	$$	
{#eq:eq1}

Смотри формулу (`[-@eq:eq1]`).


## Оформление изображений в Markdown

В Markdown вставить изображение в документ можно с помощью непосредственного

указания адреса изображения. Синтаксис данной команды выглядит следующим образом:

``` 
![Подпись к рисунку](путь/к/изображению.jpg){#fig:fig1 width=70%}
```

Здесь:

* в квадратных скобках указывается подпись к изображению;

* в круглых скобках указывается URL-адрес или относительный путь изображения, а также (необязательно) всплывающую подсказку, заключённую в двойные или одиночные кавычки.

* в фигурных скобках указывается идентификатор изображения (#fig:fig1) для ссылки на него по тексту и размер изображения относительно ширины страницы (width=90%)

Ссылка на изображение (рис. 3.1) может быть оформлена следующим образом: 
```
(рис. [-@fig:fig1])
```
<br>

## Обработка файлов в формате Markdown

![markdown](image/markdown1.jpg)

<hr>

Преобразовать файл README.md можно следующим образом:

- pandoc README.md -o README.pdf<br>

или так

- pandoc README.md -o README.docx

Для компиляции отчетов по лабораторным работам предлагается использовать следующий Makefile

FILES = $(patsubst %.md, %.docx, $(wildcard *.md))<br>

FILES += $(patsubst %.md, %.pdf, $(wildcard *.md))<br>

LATEX_FORMAT =

FILTER = --filter pandoc-crossref

%.docx: %.md

		-pandoc "$<" $(FILTER) -o "$@"

%.pdf: %.md

		-pandoc "$<" $(LATEX_FORMAT) $(FILTER) -o "$@"

all: $(FILES)

		@echo $(FILES)

clean:

		-rm $(FILES) *~
<br>

## Техническое обеспечение

При выполнении лабораторной работы на своей технике необходимо установить следующее ПО:

* TeX Live (https://www.tug.org/texlive/) последней версии.<br>

![TexLive установлен](image/TexLive_установлен.jpg) <hr><br>

* Pandoc (https://pandoc.org/).<br>

![Pandoc установлен](image/Pandoc_установлен.jpg)<hr><br>

# Порядок выполнения лабораторной работы

1. Откройте терминал
2. Перейдите в каталог курса сформированный при выполнении лабораторной работы No2:

```
cd ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc/
```

Обновите локальный репозиторий, скачав изменения из удаленного репозитория с помощью команды
```
git pull
```

![Команда 'git pull'](image/git_pull.jpg)<hr><br>

3. Перейдите в каталог с шаблоном отчета по лабораторной работе No 3
```
cd ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc/labs/lab03/report
```

4. Проведите компиляцию шаблона с использованием Makefile. Для этого введите команду
```
make
```

При успешной компиляции должны сгенерироваться файлы report.pdf и report.docx.
Откройте и проверьте корректность полученных файлов.

![Команда 'make'](image/make.jpg)<hr><br>

5. Удалите полученный файлы с использованием Makefile. Для этого введите команду
```
make clean
```

Проверьте, что после этой команды файлы report.pdf и report.docx были удалены.

![Команда 'make clean'](image/make_clean.jpg)<hr><br>

6. Откройте файл report.md c помощью любого текстового редактора, например gedit
```
gedit report.md
```

![Команда 'gedit'](image/gedit_md.jpg)<hr>
![report.md файл в Markdown редактор](image/readme_editor.jpg)<hr><br>

7. Заполните отчет и скомпилируйте отчет с использованием Makefile. Проверьте кор-
ректность полученных файлов. (Обратите внимание, для корректного отображения
скриншотов они должны быть размещены в каталоге image)

![Каталог image](image/фотки_добавлены_image.jpg)<hr>
![Заполнение отчёта](image/заполнение_отчёта.jpg)<hr><br>

8. Загрузите файлы на Github.
```
cd ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc
git add .
git commit -am 'feat(main): add files lab-3'
git push
```

![Загрузить отчёт на Github](image/загрузить_ту_гитхаб.jpg)<hr><br>

# Контрольные вопросы для самопроверки

1. Что такое Markdown?
```python
print('это язык разметки, который используется для форматирования текста. 
	Он позволяет создавать простой и удобочитаемый текстовый формат, 
	который может быть легко преобразован в HTML или другие форматы разметки.')
```

2. Как в Markdown задается начертание шрифтов?
```cpp
std::cout >> "В Markdown начертание шрифтов задается с помощью 
специальных символов. 
Например: **Жирный Текст**, *Курсивный текст*, ~~Зачеркнутый текст~~";
```

3. Как в Markdown оформляются списки?
```python
print('В Markdown для оформления списков можно использовать следующие 
синтаксисы')

print('1. Неупорядоченный список (маркированный список)'
print('
	- фраза 1
	- фраза 2
	- фраза 3 или	* фраза 1
					* фраза 2
					* фраза 3')
print('2. Упорядоченный список (нумерованный список)'
print('
	1. фраза 1
	2. фраза 2
	3. фраза 3')
print('3. Вложенные списки')
print('
	1. фраза 1
		- подфраза 1.2
	3. фраза 3
		- подфраза 3.1')
```


4. Как в Markdown оформляются изображения и ссылки на них?
```java
System.out.println("![альтернативный текст](ссылка на изображение 
"опциональный заголовок")");

System.out.println(" - "альтернативный текст" - это текст, который 
будет отображаться вместо изображения, 
если оно не может быть загружено или доступно для пользователя.
- "ссылка на изображение" - это URL-адрес или относительный путь к изображению.
- "опциональный заголовок" - это текст, который будет отображаться при 
наведении курсора на изображение.");

System.out.println(" Чтобы создать ссылку на изображение, используется 
следующий синтаксис:

[текст ссылки](ссылка)

- "текст ссылки" - это текст, который будет отображаться как ссылка.
- "ссылка" - это URL-адрес, на который будет переходить ссылка при клике.

Пример использования:

[Ссылка на котика](https://example.com/cat.jpg) ");
```

5. Как в Markdown оформляются математические формулы и ссылки на них?

В Markdown для оформления математических формул можно использовать два способа:

- Использование символов $ для вставки формулы внутри текста. Например, $E=mc^2$ будет отображаться как E=mc^2. Если нужно выделить формулу отдельно, можно использовать двойные символы $ $. Например, $ $ E=mc^2 $ $ будет отображаться в виде:

	$$
	E=mc^2
	$$

Ссылки на математические формулы можно создавать с помощью синтаксиса Markdown для ссылок. Например, [Формула](#формула) создаст ссылку на формулу с id "формула". Чтобы создать ссылку на формулу, нужно добавить id к заголовку формулы с помощью символа #. Например:

После этого можно создавать ссылки на формулу с помощью [Формула](#формула).



# Заключение


```
Могу сказать что в данный момент умею использовать Мarkdown, вполне. Теперь 
могу легко и удобно оформлять математические формулы в своих текстах, 
используя символы $ или синтаксис LaTex. Дальше я способен 
сохранять форматирование формул и делать их более читаемыми и понятными 
для читателей, вставлять изображения и ссылки в текст, создавать ссылки 
на формулы и другие элементы текста для быстрого перемещения 
по документу.
```
# Кулинарная книга

Этот репозиторий настроен для процесса создания кулинарной книги на Cooklang.

## Сгенерировать книгу

1. Открой dev container.
2. Запусти генератор:
   - `make generate`

## Отчеты через cook report

- Карточка рецепта: `cook report -t reports/recipe-card.md.jinja "spinach soup.cook"`
- Список ингредиентов с масштабом x2: `cook report -t reports/ingredients.md.jinja "lentil-stew.cook:2"`
- Отчет по стоимости (нужен каталог с ценами): `cook report -t reports/cost.md.jinja "lentil-stew.cook" --db config/db`

## Собрать PDF

- `make pdf` (по умолчанию использует `cookbook.tex`, собирается XeLaTeX)
- `make pdf TEX=mybook.tex` (свое имя файла)

## Очистить артефакты сборки

- `make clean`

## License

Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International. See `LICENSE`.

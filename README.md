# AI Dashboard Ozon — деплой на Railway

Этот репозиторий готов для публикации статического дашборда в интернете через Railway с хранением кода на GitHub.

## Что внутри

- `site/index.html` — ваш дашборд
- `Dockerfile` — контейнер для Railway
- `Caddyfile` — лёгкий веб-сервер для раздачи статического сайта
- `.dockerignore`, `.gitignore` — служебные файлы

## Быстрый запуск

### 1. Создайте репозиторий на GitHub

Например: `ai-dashboard-ozon`

### 2. Загрузите файлы в репозиторий

Через веб-интерфейс GitHub:
- `Add file` → `Upload files`
- загрузите все файлы из этой папки
- нажмите `Commit changes`

Либо через git локально:

```bash
git init
git add .
git commit -m "Initial Railway deploy"
git branch -M main
git remote add origin https://github.com/USERNAME/REPO.git
git push -u origin main
```

### 3. Подключите репозиторий в Railway

1. Откройте `https://railway.com/new`
2. Выберите **Deploy from GitHub repo**
3. Подключите GitHub, если Railway попросит доступ
4. Выберите ваш репозиторий
5. Railway сам соберёт Docker-образ и задеплоит сайт

## Как получить прямую ссылку

После первого успешного деплоя:

1. Откройте сервис в Railway
2. Перейдите в **Settings**
3. Найдите блок **Networking** / **Public Networking**
4. Нажмите **Generate Domain**
5. Railway создаст публичный адрес вида:
   `https://your-service-name.up.railway.app`

Это и будет ваша прямая ссылка в интернете.

## Как подключить свой домен

1. В Railway откройте **Settings** → **Public Networking**
2. Нажмите **Custom Domain**
3. Введите ваш домен, например `dashboard.example.com`
4. Railway покажет DNS-запись, обычно `CNAME`
5. Добавьте её у регистратора домена
6. Дождитесь выпуска SSL-сертификата

## Как обновлять сайт дальше

1. Меняете `site/index.html`
2. Коммитите изменения в GitHub
3. Railway автоматически делает новый деплой

## Если захотите редактировать данные удобнее

Сейчас дашборд полностью статический и работает из одного HTML-файла.
Если позже понадобится:
- вынести кейсы в JSON
- добавить авторизацию
- подключить базу
- сделать отдельный backend

эту же структуру можно будет расширить без переезда с Railway.

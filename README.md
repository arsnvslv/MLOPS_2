# Домашка два

Пока что тут только докер фаил для заглушки что не просрать дедлайн, но дальше будет лучше. 

Запустить можно командами:

```bash
docker build -t fastapi-poetry-app .
docker run -d --name fastapi-app -p 8000:8000 fastapi-poetry-app
```

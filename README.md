# Gunicorn Test

```bash
gunicorn --bind 0.0.0.0:5000 --workers 2 --access-logfile - main:app
```

```bash
docker build -t gunicorn-test .
docker run -it --rm -p 8000:8000 gunicorn-test gunicorn -c \
    gunicorn_conf.py main:app
```

To add a worker dynamically:
```bash
kill -TTIN <master pid>
```

To remove a worker dynamically:
```bash
kill -TTOU <master pid>
```

To gracefully reload gunicorn:
```bash
kill -HUP <master pid>
```

FROM astral/uv:apline

RUN mkdir /srv/app
WORKDIR /srv/app

COPY ./hello.py .
COPY ./pyproject.toml .

RUN uv sync
RUN uv pip install gunicorn

EXPOSE 8000

CMD ["uv", "run", "gunicorn", "--workses", "3", "--bind", "0.0.0.0:8000", "app:app"]
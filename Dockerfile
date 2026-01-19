FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY src /app/src
COPY tests /app/tests

# Au run du conteneur, on lance les tests
CMD ["python", "-m", "unittest", "discover", "-s", "tests", "-p", "test_*.py"]

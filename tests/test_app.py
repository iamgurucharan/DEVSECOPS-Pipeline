import pytest
from src.app import app

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client
        
def test_home(client):
    response = client.get("/")
    assert response.status_code == 200
    assert b"Welcome to the DevSecOps Pipeline!" in response.data
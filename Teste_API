import requests

def test_get_users():
    url = "https://gorest.co.in/public-api/users"
    response = requests.get(url)
    
    assert response.status_code == 200, "Erro ao obter usuários"
    
    users = response.json()
    assert "data" in users, "Resposta inválida - dados ausentes"
    
    print("Teste de GET bem-sucedido")

def test_create_user():
    url = "https://gorest.co.in/public-api/users"
    headers = {
        "Authorization": "Bearer O_token_de_autorizacao_aqui",
        "Content-Type": "application/json"
    }
    data = {
        "name": "User 1",
        "email": "User1@example.com",
        "gender": "male",
        "status": "active"
    }
    
    response = requests.post(url, headers=headers, json=data)
    
    assert response.status_code == 201, "Erro ao criar usuário"
    
    new_user = response.json()
    assert "data" in new_user, "Resposta inválida - dados ausentes"
    
    print("Teste de POST bem-sucedido")

def test_delete_user():
    user_id = "id_do_usuario_a_ser_removido"
    url = f"https://gorest.co.in/public-api/users/{user_id}"
    headers = {
        "Authorization": "Bearer O_token_de_autorizacao_aqui",
    }
    
    response = requests.delete(url, headers=headers)
    
    assert response.status_code == 204, "Erro ao excluir usuário"
    
    print("Teste de DELETE bem-sucedido")

# Executar o teste
test_get_users()
test_create_user()
test_delete_user()


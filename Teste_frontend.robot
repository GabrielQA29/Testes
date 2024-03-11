*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.saucedemo.com/
${BROWSER}    Chrome

*** Test Cases ***
Adicionar Itens e Finalizar Compra
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    0.5  # Defina a velocidade do Selenium para facilitar a visualização
    Login
    Adicionar Itens ao Carrinho
    Finalizar Compra

*** Keywords ***
Login
    Input Text    id = user-name    standard_user
    Input Password    id = password    secret_sauce
    Click Button    id = login-button

Adicionar Itens ao Carrinho
    Click Button    id = add-to-cart-sauce-labs-backpack  # Adicionar primeiro item
    Click Button    id = add-to-cart-sauce-labs-bike-light  # Adicionar segundo item
    Click Link    id = shopping_cart_container
    Click Button    id = checkout

Finalizar Compra
    Input Text    id = first-name    John
    Input Text    id = last-name    Doe
    Input Text    id = postal-code    12345
    Click Button    id = continue
    Wait Until Page Contains    Thank you for your order!

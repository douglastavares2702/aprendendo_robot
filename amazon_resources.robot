*** Settings ***
Library    SeleniumLibrary    
Library    XML
Library    RequestsLibrary

*** Variables ***
${URL}    https://www.amazon.com.br
${MENU_MAIS_VENDIDOS}      //a[@href='/gp/bestsellers/?ref_=nav_cs_bestsellers'][contains(.,'Mais Vendidos')]
${HEADER_MAIS_VENDIDOS}    //title[contains(.,'Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon')]
${TEXTO_HEADER_MAIS VENDIDOS}       Mais Vendidos

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window
           
Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL} 
    Wait Until Element Is Visible    locator=${MENU_MAIS_VENDIDOS} 

Entrar no menu "Mais Vendidos"
    Click Element    locator=${MENU_MAIS VENDIDOS}
    Wait Until Element Is Visible    locator=${MENU_MAIS_VENDIDOS}
Verificar se aparece a frase "Mais Vendidos"
    Wait Until Page Contains         text=${TEXTO_HEADER_MAIS_VENDIDOS}
    Wait Until Element Is Visible    locator=${MENU_MAIS_VENDIDOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}  

 Verificar se aparece a categoria "Computadores e Informática"
    Element Should Be Visible    locator=//a[@href='/gp/bestsellers/computers/ref=zg_bs_nav_0'][contains(.,'Computadores e Informática')]

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=twotabsearchtextbox    text=${PRODUTO}

Clicar no botão de pesquisa
    Click Element    locator=nav-search-submit-button

Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    Click Element    locator=(//a[contains(.,'Console Xbox Series S')])[1]    

Adicionar o produto "Console Xbox Series S" no carrinho       
    Click Element    locator=//input[contains(@title,'Adicionar ao carrinho')]           

Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso
    Wait Until Element Is Visible    locator=//span[@class='a-size-medium-plus a-color-base sw-atc-text a-text-bold'][contains(.,'Adicionado ao carrinho')]         

Clicar em "Ir para o carrinho"
    Click Element    locator=//a[contains(.,'Ir para o carrinho')]

Remover o produto "Console Xbox Series S" do carrinho
    Click Element    locator=//input[@data-action='delete']    

Verificar se o carrinho fica vazio
    Wait Until Element Is Visible    locator=//h1[@class='a-spacing-mini a-spacing-top-base'][contains(.,'Seu carrinho de compras da Amazon está vazio.')]
  
       # GHERKIN STEPS
Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Mais Vendidos"
Quando acessar o menu "Mais vendidos"
    Verificar se aparece a frase "Mais vendidos"

Então o título da página deve ficar "Mais vendidos | Amazon.com.br"
    Verificar se o título da página fica "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"    

E o texto "Mais vendidos" deve ser exibido na página
    Verificar se aparece a frase "Mais vendidos"

E a categoria "Computadores e Informática" deve ser exibida na página
     Verificar se aparece a categoria "Computadores e Informática"

Quando pesquisar pelo produto "Xbox Series S"
        Digitar o nome de produto "Xbox Series S" no campo de pesquisa
        Clicar no botão de pesquisa
        
Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
        Verificar se o título da página fica "Amazon.com.br : Xbox Series S"

Quando adicionar o produto "Console Xbox Series S" no carrinho
        Então o produto "Console Xbox Series S" deve ser mostrado no carrinho

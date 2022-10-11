*** Settings ***
Documentation    Essa suite testa o site da Amazon.com.br
Resource         amazon_resources.robot    
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
# Caso de Teste 01 - Acesso ao menu "Mais Vendidos"
#     [Documentation]    Esse teste verifica o menu Mais Vendidos do site da Amazon.com.br
#     ...                e verifica a categoria Computadores e Informática      
#     [Tags]             menus    categorias   
#     Dado que estou na home page da Amazon.com.br
#     Quando acessar o menu "Mais vendidos"    
#     Então o título da página deve ficar "Mais vendidos | Amazon.com.br"
#     E o texto "Mais vendidos" deve ser exibido na página
#     E a categoria "Computadores e Informática" deve ser exibida na página

# Caso de Teste 02 - Pesquisa de um Produto
#     [Documentation]    Esse teste verifica a busca de um produto
#     [Tags]             busca_produtos    lista_busca  
#     Dado que estou na home page da Amazon.com.br
#     Quando pesquisar pelo produto "Xbox Series S"
#     Então o título da página deve ficar "Amazon.com.br : Xbox Series S"

# Caso de Teste 03 - Adicionar Produto no Carrinho   
#     [Documentation]    Esse teste verifica a adição de um produto no carrinho de compras
#     [Tags]             adicionar_carrinho
#     Dado que estou na home page da Amazon.com.br
#     Digitar o nome de produto "Xbox Series S" no campo de pesquisa
#     Clicar no botão de pesquisa
#     Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"                 
#     Adicionar o produto "Console Xbox Series S" no carrinho        
#     Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso

Caso de Teste 04 - Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]            remover_carrinho
    Dado que estou na home page da Amazon.com.br
    Digitar o nome de produto "Console Xbox Series S" no campo de pesquisa
    Clicar no botão de pesquisa  
    Verificar o resultado da pesquisa se está listando o produto "Console Xbox Series S"
    # Adicionar o produto "Console Xbox Series S" no carrinho
    # Verificar se o produto "Console Xbox Series S" foi adicionado com sucesso 
    # Clicar em "Ir para o carrinho"    
    # Remover o produto "Console Xbox Series S" do carrinho
    # Verificar se o carrinho fica vazio

   
 


  
      
    
    

       
    
   




Modelo em Latex para elaboração de dissertações e teses da Universidade de Brasília (UnB)
-----------------------------------------------------------------------------------------

Este é um modelo (template) Latex **NÃO OFICIAL** para elaboração de dissertações e teses da [Faculdade de Tecnologia (FT)](http://ftd.unb.br) da [UnB](http://unb.br). Esta é uma versão atualizada por [Manoel Campos](http://manoelcampos.com), adicionando recursos como "página de assinaturas" da dissertação/tese e organizando o código do template para que o mesmo não fique misturado com o conteúdo do documento sendo escrito pelo acadêmico. 

Esta versão também removeu a necessidade de instalação do template em uma pasta específica do sistema, permitindo que ele fique dentro da pasta da dissertação/tese e tornando seu uso direto: basta baixar, fazer as alterações que desejar e compilar. Além disso, a removação da necessidade de instalação do template em uma pasta global permite o uso do mesmo em qualquer sistema operacional que tenha um compilador PDFLatex.

Estrutura do projeto
--------------------
Depois de baixados os arquivos do projeto você terá a seguinte estrutura de pastas:
- **template-FT-UnB**: arquivos do template. A não ser que deseje fazer melhorias ou correções no template, os arquivos desta pasta não devem ser modificados.
- **imagens**: pasta onde as imagens da sua dissertação/tese devem ser salvas para facilitar a organização

Os arquivos na raiz da pasta são arquivos de exemplo de uma dissertação de mestrado. O arquivo principal foi apropriadamente nomeado de [principal.tex](principal.tex). A partir dele é que é feita a compilação do documento. Cada outro arquivo .tex é uma parte específica do documento de exemplo (como resumo, cada capítulo, conclusão, apêndices, etc). As referências a serem utilizadas devem estar no arquivo [referencias.bib](referencias.bib).

Compilando sua Dissertação/Tese
-------------------------------
Sua dissertação ou tese utilizando o template deve ser compilada com o compilador PDFLatex, que faz parte das distribuições Latex disponíveis para a maioria dos sistemas operacionais. Para editar os documentos *.tex, pode ser utilizado qualquer editor Latex. Um excelente editor é o [TeXstudio](http://www.texstudio.org), que além de ser software livre, está disponível para Windows, Linux e MacOS.

Para quem é íntimo do terminal e de ferramentas de desenvolvimento, é disponibilizado um arquivo [Makefile](Makefile) que executa todos os comandos para compilar corretamente o documento. Em sistemas Linux, BSD e MacOS que possuam a ferramenta *make* instalada, basta entrar na pasta do projeto e digitar `make` para compilar. Se tudo correr bem, o documento [principal.pdf](principal.pdf) será gerado.

Para apagar todo o lixo gerado pela compilação do documento, pode-se utilizar o [Makefile](Makefile), bastando executar o comando `make clean`.

Autor
----- 
Não sou o autor original deste projeto :relaxed:, fiz apenas a reestruturação do mesmo para facilitar o uso e impedir que comandos do template sejam misturados ao documento do acadêmico.

Desta forma, os créditos pela autoria do projeto devem ser dados ao [Prof. D.Sc. Geovany Araujo Borges (UnB)](https://lara.unb.br/~gaborges/).

  
Colaboradores
-------------
- Nathalie Pinheiro
- André Calmon
- Renan Utida
- [Manoel Campos da Silva Filho](http://manoelcampos.com) (eu :v: :smile:)

Licença:
--------    
- [Attribution-NonCommercial-ShareAlike 3.0 Unported CC BY-NC-SA 3.0](http://creativecommons.org/licenses/by-nc-sa/3.0/)


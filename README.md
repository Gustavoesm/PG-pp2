# Trabalho de Processamento Grafico

## Grupo 11
### Integrantes:
- Gabriel Peres de Andrade 726517
- Giovanni Alvarenga Silva 726525
- Gustavo Eugênio de Souza Moraes 620238
- Leonardo Melo Martins 726558
- Luiz Felipe Guimarães 743570

Trabalho de Processamento Gráfico desenvolvido pelo Grupo 11 que visa atender os requisitos explicitados pelo ministrante prof. Siovani Cintra Felipussi da Universidade Federal de São Carlos- Campus Sorocaba.

### Observações importantes:
Devido a incompatibilidade do software Octave com drivers de vídeo de integrantes de grupo, o grupo optou por salvar em disco todas as "figures" geradas no runtime do Octave e trabalhar com as imagens geradas. Esperamos que isso não seja um problema para a apresentação de nossas escolhas.

### Sobre o Trabalho: 
O trabalho consiste em analizar os número 0-9 e encontrar o algoritmo adequado de descrição para cada um deles, de modo que sejam únicos e de fácil identificação.

##### Observação:
Por características específicas da imagem escolhida, tais como alta resolução e espessura da fonte utilizada, removemos o método de [aproximação poligonal](poligonal_approximation.m) de nossas análises, visto que ele se mostrou muito fiel à imagem original em todos os exemplos. [link para a pasta de resultados](output/poligonal/)

#### Números:
##### 0
Para o número 0, o grupo identificou como ideal para sua descrição o [método de assinatura](signature.m), visto que o número 0 é perfeitamente simetrico, que faz com que sua assinatura seja bem característica. [assinatura gerada](output/signature/0-signature.jpg)
##### 1
Para o número 1, o grupo concluiu que o algoritmo mais adequado seria o de [código de cadeia](chain_code.m), devido a poucas mudanças mudanças de direção e alta incidência de valores verticais. [código de cadeia gerado](output/chaincode/1-chain-code.txt) 
##### 2
Para o número 2, a conclusão foi de que o mais adequado seria o [esqueleto do número](skeleton.m), visto que a base gerada é fiel ao número original. [esqueleto gerado](output/chaincode/2-skeleton.jpg)
##### 3
O número 3 é outro número que pode ser bem representado pelo [método de assinatura](signature.m), dada sua simetria gerada pelo eixo horizontal. [assinatura gerada](output/signature/3-signature.jpg)
##### 4
Para o número 4, por apresentar similaridades com outros número em todos os outros algoritmos, por processo de eliminação, escolhemos o [esqueleto](skeleton.m). [esqueleto gerado](output/skeleton/4-skeleton.jpg)
##### 5
E para o número 5, mais uma vez, a conclusão foi de que o mais adequado seria o [esqueleto](skeleton.m), pelos mesmo motivo de a base gerada ser fiel ao número original e por não obtivermos soluções mais simples. [esqueleto gerado](output/skeleton/5-skeleton.jpg)
##### 6
Para o número 6, por apresentar demasiada similaridade com o número 9 em todos os algoritmos, por processo de eliminação, escolhemos o [esqueleto](skeleton.m) por apresentar mais diferenças. [esqueleto gerado](output/skeleton/6-skeleton.jpg)
##### 7
Mais uma vez, para o número 7, decidimos que o algoritmo mais adequado seria novamente o [código de cadeia](chain_code.m), devido a poucas mudanças mudanças de direção e alta incidência de valores diagonais e horizontais. [código de cadeia gerado](output/chaincode/7-chain-code.txt) 
##### 8
O número 8 tem uma característica única se comparado aos outros, pois é o único que apresenta em suas [medidas escalares](scalar.m) o número de euler como -1, devido às suas duas cavidades interiores. [medidas escalares geradas](output/scalar/8-scalar-description.txt)
##### 9
Para o número 9, por apresentar demasiada similaridade com o número 6 em todos os algoritmos, por processo de eliminação, escolhemos o [esqueleto](skeleton.m) por apresentar mais diferenças. [esqueleto gerado](output/skeleton/9-skeleton.jpg)
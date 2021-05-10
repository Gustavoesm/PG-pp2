clear all, clc, close all

pkg load image

% ---> GRUPO 11 <---
% Gabriel Peres de Andrade 726517
% Giovanni Alvarenga Silva 726525
% Gustavo Eugênio de Souza Moraes 620238
% Leonardo Melo Martins 726558
% Luiz Felipe Guimarães 743570

# iterate through numbers 0-9
for iterator = 0:9

	### PRE-PROCESSING ###
	# generate an string url path for each number
	img_url = strcat("img/", num2str(iterator), ".jpg");
	# load the image
	img_src = imread(img_url);
	# convert image to binary (also converts to grayscale before)
	img_binary = im2bw(img_src);
	# transform image and gets it's negative
	img_compl = imcomplement(img_binary);

	### DESCRIPTORS ###
	% scalar(img_compl, iterator);
	% skeleton(img_compl, iterator);
	% assinatura(img_compl, iterator);
	poligonal_approximation(img_compl, iterator);
endfor

%{ 
------> TODO: 

--> Considerando os números de 0 a 9, efetue a 
representação/descrição de cada elemento pelo 
descritor mais apropriado abordado em aula e/ou do 
capítulo Representação e Descrição do Gonzalez.

--> A saída do arquivo será em tela mostrando cada 
número considerado, o descritor empregado e o seu 
respectivo resultado.

----> REPRESENTAÇÕES POR FRONTEIRA

–> Aproximações Poligonais
–> Sequência de Segmentos
–> Inscrição de Polígono Convexo
–> Divisão Recursiva do Contorno
–> Código da Cadeia
–> Assinaturas
–> Algoritmo MPP (Opcional)

----> REPRESENTAÇÕES POR BORDA

-> Esqueletonização
-> Descritores Escalares:
	– Área
	– Número de Euler;
	– Excentricidade;
	– Compacidade;
	

}%
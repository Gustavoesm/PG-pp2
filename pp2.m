clear all, clc, close all

pkg load image

% ---> GRUPO 11 <---
% Gabriel Peres de Andrade 726517
% Giovanni Alvarenga Silva 726525
% Gustavo Eugênio de Souza Moraes 620238
% Leonardo Melo Martins 726558
% Luiz Felipe Guimarães 743570

for iterator = 0:9
	img_url = strcat("img/", num2str(iterator), ".jpg");
	img_src = imread(img_url);
	img_binary = im2bw(img_src);
	img_compl = imcomplement(img_binary);

	inf = 20; % adjust values

	img_skel = bwmorph(img_compl, 'skel', inf);

	output_url = strcat("output/", num2str(iterator), "-skeleton.jpg");
	imwrite(img_skel, output_url);
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

}%
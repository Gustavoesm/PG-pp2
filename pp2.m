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

	### SCALAR DESCRIPTORS ###
	props = regionprops(img_compl, "Area", "EulerNumber", "Eccentricity", "Perimeter");
	props.("Compactness") = props.("Perimeter") / props.("Area");
	disp(props);
	continue;

	### SKELETON ###
	# skeleton transformation
	img_skel = bwmorph(img_compl, 'skel', Inf);
	# generate an output path and name to the skeleton
	output_url = strcat("output/", num2str(iterator), "-skeleton.jpg");
	# write image down to disk
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
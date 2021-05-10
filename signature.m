function signature(img, iterator)

	%reconhece e destaca as bordas, plota o número do objeto no centróide
	[B1,L1] = bwboundaries(img);

	%plota a função assinatura
	fig = figure('visible','off');

	boundary1 = B1{1};
	[th, r]=cart2pol(boundary1(:,2)-mean(boundary1(:,2)), ...;
	boundary1(:,1)-mean(boundary1(:,1)));
	%subplot(subplotrow,round(N1/subplotrow),cnt);

	plot(th,r,'.');
	axis([-pi pi 0 100]);
	xlabel('radiano');ylabel('r');
	title(strcat(['Numero '], num2str(iterator)));

	output_url = strcat("output/signature/", num2str(iterator), "-signature.jpg");
	print (fig, output_url, "-djpg");
endfunction
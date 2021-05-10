function poligonal_approximation(img, iterator)

    s=size(img);
	fig = figure('visible','off');
    for row = 2:55:s(1)
        for col=1:s(2)
            if img(row,col), break;
            end
        end
        %contour = imgtraceboundary(img, [row, col], 'W', 8);
        contour = bwboundaries(img,8);
		contour = cell2mat (contour);
        if(~isempty(contour))
            hold on; 
            plot(contour(:,2),contour(:,1),'g','LineWidth',4);
            hold on; 
            plot(col, row,'gx','LineWidth',2);
        else
            hold on; 
            plot(col, row,'rx','LineWidth',2);
        end
    end
	output_url = strcat("output/poligonal/", num2str(iterator), "-poligonal-approx.jpg");
	print (fig, output_url, "-djpg");
end
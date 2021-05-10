function chain_code(img, iterator)

    img = rgb2gray(img);
    
    b = bwboundaries(img);
    [boundarycount, asdf] = size(b);
    grid = 10;

    # open output file
    output_url = strcat("output/", num2str(iterator), "-chain-code.txt");
    file = fopen(output_url,'w');

    for k=1:boundarycount
        j=0;
        array = [];
        [rows, columns] = size(b{k,1});
        for i=1:rows-1
            y = round(b{k,1}(i,1)/grid);
            x = round(b{k,1}(i,2)/grid);
            y2 = round(b{k,1}(i+1,1)/grid);
            x2 = round(b{k,1}(i+1,2)/grid);

            dx = x2 - x;
            dy = y2 - y;
            if not(dx == 0 && dy==0)
                j = j+1;
                if (dx == 1 && dy ==0)
                array(j) = 0;
                end
                if (dx == 1 && dy ==1)
                array(j) = 1;
                end
                if (dx == 0 && dy ==1)
                array(j) = 2;
                end
                if (dx == -1 && dy ==1)
                array(j) = 3;
                end
                if (dx == -1 && dy ==0)
                array(j) = 4;
                end
                if (dx == -1 && dy ==-1)
                array(j) = 5;
                end
                if (dx == 0 && dy ==-1)
                array(j) = 6; 
                end
                if (dx == 1 && dy ==-1)
                array(j) = 7; 
                end
            end
        end;
        for i = 1:j
            # print chain code to file
            fprintf(file, '%d', array(i));
        end;
    end;
    fclose(file);
endfunction
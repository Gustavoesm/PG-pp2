function scalar(img, iterator)

	# generate text file path
	output_url = strcat("output/scalar/", num2str(iterator), "-scalar-description.txt");
	# open file in (over)write mode
	file = fopen(output_url, "w");
	# save scalars to "props" struct
	props = regionprops(img, "Area", "EulerNumber", "Eccentricity", "Perimeter");
	props.("Compactness") = power(props.("Perimeter"),2) / props.("Area");
	# remove undesired field "Perimeter" from props struct
	props = rmfield(props, "Perimeter");
	# print struct to file
	fdisp(file, props);
	# close file
	fclose(file);
endfunction
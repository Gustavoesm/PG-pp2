function skeleton(img, iterator)

	# skeleton transformation
	img_skel = bwmorph(img, 'skel', Inf);
	# generate an output path and name to the skeleton
	output_url = strcat("output/skeleton/", num2str(iterator), "-skeleton.jpg");
	# write image down to disk
	imwrite(img_skel, output_url);
endfunction
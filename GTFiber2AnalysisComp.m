%GTFiber Length and Width Data Collection for Folder Analysis:
%NOTE: Must run this code every time you analyze an image to save the
%length and width. 
%NOTE: Must update file name EACH TIME you use code.

WidthVectorPH12=[ims(:).FWD]; %HARDCODED UPDATEB NUMBERING TO MATCH IMAGES ANALYZED (i.e. update from PH11 to PH12 for second image analyzed in folder)
LengthVectorPH12=[ims(:).FLD];%HARDCODED UPDATEB NUMBERING TO MATCH IMAGES ANALYZED (i.e. update from PH11 to PH12 for second image analyzed in folder)
save('WidthVectorPH12', 'WidthVectorPH12'); %HARDCODED UPDATEB NUMBERING TO MATCH IMAGES ANALYZED (i.e. update from PH11 to PH12 for second image analyzed in folder)
save('LengthVectorPH12', 'LengthVectorPH12');  %HARDCODED UPDATEB NUMBERING TO MATCH IMAGES ANALYZED (i.e. update from PH11 to PH12 for second image analyzed in folder)

%If names aren't updated between each image analyzed you will overwrite the old data in the folder. 
%Update the names in all 4 lines of code above by symply changing the
%numbers at the end (11 to 12 for second image, 12 to 13 for 3rd image etc)
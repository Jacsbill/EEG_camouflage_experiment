%%%loads images for trial
% imgtri=array of images with tri
% imgblank=array of blank image
% sd=side to present tri on
% hz=present tri at top middle or bottom
% iy=width of image
% ix= height of image

function[show savesequence]=loadimages(imgtri, imgblank, sd, hz, iy, ix, tr, T, Tb2,savesequence,j)
    savesequence(j,1)=tr;
    if sd==0 && hz==0; %Left top
        savesequence(j,2:7)=[T.Var1(tr) T.match(tr) Tb2.Var4(tr) Tb2.neighbour(tr) b2.Var4(tr+200) Tb2.neighbour(tr+200) ]
        show.imdataTL=imgtri{T.Var1(tr)}; %tri image
        show.imagetexTL=Screen('MakeTexture', screen.w, show.imdataTL(1:iy, 1:ix,:));
        show.RectTL=Screen('Rect', show.imagetexTL);
        %topright
        show.imdataTR=imgblank{T.match(tr)}; %it's luminance match
        show.imagetexTR=Screen('MakeTexture', screen.w, show.imdataTR(1:iy, 1:ix,:));
        show.RectTR=Screen('Rect', show.imagetexTR);
        %bottomleft
        show.imdataBL=imgblank{Tb2.Var4(tr)};
        show.imagetexBL=Screen('MakeTexture', screen.w, show.imdataBL(1:iy, 1:ix,:));
        show.RectBL=Screen('Rect', show.imagetexBL);
        %bottomright
        show.imdataBR=imgblank{Tb2.neighbour(tr)};
        show.imagetexBR=Screen('MakeTexture', screen.w, show.imdataBR(1:iy, 1:ix,:));
        show.RectBR=Screen('Rect', show.imagetexBR);
        %left
        show.imdataL=imgblank{Tb2.Var4(tr+200)};
        show.imagetexL=Screen('MakeTexture', screen.w, show.imdataL(1:iy, 1:ix,:));
        show.RectL=Screen('Rect', show.imagetexL);
        %right
        show.imdataR=imgblank{Tb2.neighbour(tr+200)};
        show.imagetexR=Screen('MakeTexture', screen.w, show.imdataR(1:iy, 1:ix,:));
        show.RectR=Screen('Rect', show.imagetexR);
        
    elseif sd==0 && hz==2; %left middle
        savesequence(j,2:7)=[Tb2.Var4(tr+200) Tb2.neighbour(tr+200) Tb2.Var4(tr) Tb2.neighbour(tr) T.Var1(tr) T.match(tr)];
        show.imdataTL=imgtri{Tb2.Var4(tr+200)}; %tri image
        show.imagetexTL=Screen('MakeTexture', screen.w, show.imdataTL(1:iy, 1:ix,:));
        show.RectTL=Screen('Rect', show.imagetexTL);
        %topright
        show.imdataTR=imgblank{Tb2.neighbour(tr+200)}; %it's luminance match
        show.imagetexTR=Screen('MakeTexture', screen.w, show.imdataTR(1:iy, 1:ix,:));
        show.RectTR=Screen('Rect', show.imagetexTR);
        %bottomleft
        show.imdataBL=imgblank{Tb2.Var4(tr)};
        show.imagetexBL=Screen('MakeTexture', screen.w, show.imdataBL(1:iy, 1:ix,:));
        show.RectBL=Screen('Rect', show.imagetexBL);
        %bottomright
        show.imdataBR=imgblank{Tb2.neighbour(tr)};
        show.imagetexBR=Screen('MakeTexture', screen.w, show.imdataBR(1:iy, 1:ix,:));
        show.RectBR=Screen('Rect', show.imagetexBR);
        %left
        show.imdataL=imgblank{T.Var1(tr)}; 
        show.imagetexL=Screen('MakeTexture', screen.w, show.imdataL(1:iy, 1:ix,:));
        show.RectL=Screen('Rect', show.imagetexL);
        %right
        show.imdataR=imgblank{T.match(tr)}; 
        show.imagetexR=Screen('MakeTexture', screen.w, show.imdataR(1:iy, 1:ix,:));
        show.RectR=Screen('Rect', show.imagetexR);
        
     elseif sd==0 && hz==3; %left bottom
          savesequence(j,2:7)=[Tb2.Var4(tr+200) Tb2.neighbour(tr+200) Tb2.Var4(tr) Tb2.neighbour(tr) T.Var1(tr) T.match(tr)];
        show.imdataTL=imgtri{Tb2.Var4(tr+200)}; %tri image
        show.imagetexTL=Screen('MakeTexture', screen.w, show.imdataTL(1:iy, 1:ix,:));
        show.RectTL=Screen('Rect', show.imagetexTL);
        %topright
        show.imdataTR=imgblank{Tb2.neighbour(tr+200)}; %it's luminance match
        show.imagetexTR=Screen('MakeTexture', screen.w, show.imdataTR(1:iy, 1:ix,:));
        show.RectTR=Screen('Rect', show.imagetexTR);
        %bottomleft
        show.imdataBL=imgblank{T.Var1(tr)};
        show.imagetexBL=Screen('MakeTexture', screen.w, show.imdataBL(1:iy, 1:ix,:));
        show.RectBL=Screen('Rect', show.imagetexBL);
        %bottomright
        show.imdataBR=imgblank{T.match(tr)};
        show.imagetexBR=Screen('MakeTexture', screen.w, show.imdataBR(1:iy, 1:ix,:));
        show.RectBR=Screen('Rect', show.imagetexBR);
        %left
        show.imdataL=imgblank{Tb2.Var4(tr)}; 
        show.imagetexL=Screen('MakeTexture', screen.w, show.imdataL(1:iy, 1:ix,:));
        show.RectL=Screen('Rect', show.imagetexL);
        %right
        show.imdataR=imgblank{Tb2.neighbour(tr)}; 
        show.imagetexR=Screen('MakeTexture', screen.w, show.imdataR(1:iy, 1:ix,:));
        show.RectR=Screen('Rect', show.imagetexR);
        
    elseif sd==1 && hz==0; %right top
        savesequence(j,2:7)=[T.match(tr) T.Var1(tr) Tb2.neighbour(tr) Tb2.Var4(tr) Tb2.neighbour(tr+200) Tb2.Var4(tr+200)];
        show.imdataTL=imgtri{T.match(tr)}; %tri image
        show.imagetexTL=Screen('MakeTexture', screen.w, show.imdataTL(1:iy, 1:ix,:));
        show.RectTL=Screen('Rect', show.imagetexTL);
        %topright
        show.imdataTR=imgblank{T.Var1(tr)}; %it's luminance match
        show.imagetexTR=Screen('MakeTexture', screen.w, show.imdataTR(1:iy, 1:ix,:));
        show.RectTR=Screen('Rect', show.imagetexTR);
        %bottomleft
        show.imdataBL=imgblank{Tb2.neighbour(tr)};
        show.imagetexBL=Screen('MakeTexture', screen.w, show.imdataBL(1:iy, 1:ix,:));
        show.RectBL=Screen('Rect', show.imagetexBL);
        %bottomright
        show.imdataBR=imgblank{Tb2.Var4(tr)};
        show.imagetexBR=Screen('MakeTexture', screen.w, show.imdataBR(1:iy, 1:ix,:));
        show.RectBR=Screen('Rect', show.imagetexBR);
        %left
        show.imdataL=imgblank{Tb2.neighbour(tr+200)};
        show.imagetexL=Screen('MakeTexture', screen.w, show.imdataL(1:iy, 1:ix,:));
        show.RectL=Screen('Rect', show.imagetexL);
        %right
        show.imdataR=imgblank{Tb2.Var4(tr+200)};
        show.imagetexR=Screen('MakeTexture', screen.w, show.imdataR(1:iy, 1:ix,:));
        show.RectR=Screen('Rect', show.imagetexR);
        
    elseif sd==1 && hz==2; %right middle
        savesequence(j,2:7)=[Tb2.neighbour(tr+200) Tb2.Var4(tr+200) Tb2.neighbour(tr) Tb2.Var4(tr) T.match(tr) T.Var1(tr)];
        show.imdataTL=imgtri{Tb2.neighbour(tr+200)}; %tri image
        show.imagetexTL=Screen('MakeTexture', screen.w, show.imdataTL(1:iy, 1:ix,:));
        show.RectTL=Screen('Rect', show.imagetexTL);
        %topright
        show.imdataTR=imgblank{Tb2.Var4(tr+200)}; %it's luminance match
        show.imagetexTR=Screen('MakeTexture', screen.w, show.imdataTR(1:iy, 1:ix,:));
        show.RectTR=Screen('Rect', show.imagetexTR);
        %bottomleft
        show.imdataBL=imgblank{Tb2.neighbour(tr)};
        show.imagetexBL=Screen('MakeTexture', screen.w, show.imdataBL(1:iy, 1:ix,:));
        show.RectBL=Screen('Rect', show.imagetexBL);
        %bottomright
        show.imdataBR=imgblank{Tb2.Var4(tr)};
        show.imagetexBR=Screen('MakeTexture', screen.w, show.imdataBR(1:iy, 1:ix,:));
        show.RectBR=Screen('Rect', show.imagetexBR);
        %left
        show.imdataL=imgblank{T.match(tr)}; 
        show.imagetexL=Screen('MakeTexture', screen.w, show.imdataL(1:iy, 1:ix,:));
        show.RectL=Screen('Rect', show.imagetexL);
        %right
        show.imdataR=imgblank{T.Var1(tr)}; 
        show.imagetexR=Screen('MakeTexture', screen.w, show.imdataR(1:iy, 1:ix,:));
        show.RectR=Screen('Rect', show.imagetexR);
        
     elseif sd==1 && hz==3; %right bottom
        savesequence(j,2:7)=[Tb2.neighbour(tr+200) Tb2.Var4(tr+200) T.match(tr) T.Var1(tr) Tb2.neighbour(tr) Tb2.Var4(tr)];
        show.imdataTL=imgtri{Tb2.neighbour(tr+200)}; %tri image
        show.imagetexTL=Screen('MakeTexture', screen.w, show.imdataTL(1:iy, 1:ix,:));
        show.RectTL=Screen('Rect', show.imagetexTL);
        %topright
        show.imdataTR=imgblank{Tb2.Var4(tr+200)}; %it's luminance match
        show.imagetexTR=Screen('MakeTexture', screen.w, show.imdataTR(1:iy, 1:ix,:));
        show.RectTR=Screen('Rect', show.imagetexTR);
        %bottomleft
        show.imdataBL=imgblank{T.match(tr)};
        show.imagetexBL=Screen('MakeTexture', screen.w, show.imdataBL(1:iy, 1:ix,:));
        show.RectBL=Screen('Rect', show.imagetexBL);
        %bottomright
        show.imdataBR=imgblank{T.Var1(tr)};
        show.imagetexBR=Screen('MakeTexture', screen.w, show.imdataBR(1:iy, 1:ix,:));
        show.RectBR=Screen('Rect', show.imagetexBR);
        %left
        show.imdataL=imgblank{Tb2.neighbour(tr)}; 
        show.imagetexL=Screen('MakeTexture', screen.w, show.imdataL(1:iy, 1:ix,:));
        show.RectL=Screen('Rect', show.imagetexL);
        %right
        show.imdataR=imgblank{Tb2.Var4(tr)}; 
        show.imagetexR=Screen('MakeTexture', screen.w, show.imdataR(1:iy, 1:ix,:));
        show.RectR=Screen('Rect', show.imagetexR);
        
    end
    
function [label,D]=cdist(XA,centers)
%XA: training set
%centers: centers of clusters, number of clusters = size(centers,1)
% [label,D]=cdist(XA,centers): calulate euclise distance of data to
% centers and assign label base on min distance
%D: euclise distance, 
[ra,ca]=size(XA);
[rb,cb]=size(centers);

if(ca~=cb)
    D=0;
    label=0;
    return; 
end
D=zeros(ra,rb);
label=zeros(ra,1);
for i=1:ra
   for j=1:rb
      D(i,j)=norm(XA(i,:)-centers(j,:)); 
   end
   label(i)=find(D(i,:)==min(D(i,:)));
end
end
function centers=kmeans_update_centers(X,label,K)
% centers=kmeans_update_centers(X,label,K): calulate centers point base on
% label
centers=zeros(K,size(X,2));
for i=1:K
   Xk=X(label==i,:) ;
   centers(i,:)=mean(Xk,1);
end
end
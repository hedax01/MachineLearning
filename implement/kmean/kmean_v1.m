means{1}=[2,2];
means{2}=[8,3];
means{3}=[3,6];

cov=[1,0;0,1];
X0=mvnrnd(means{1},cov,500);
X1=mvnrnd(means{2},cov,500);
X2=mvnrnd(means{3},cov,500);
X=[X0;X1;X2];


randPick=round(500*rand(1,3));
K=3;
centers=X(randPick,:);
% centers=[2,0;2,8;2,25];
ites=0;
while 1
    plot(X0(:,1),X0(:,2),'b^');
    hold on
    plot(X1(:,1),X1(:,2),'go');
    plot(X2(:,1),X2(:,2),'cs');
    plot(centers(:,1),centers(:,2),'r^')
    title('iteration '+string(ites))
    hold off
    pause(1);
    ites=ites+1;
   [label,~]=cdist(X,centers);
   new_centers=kmeans_update_centers(X,label,K);
   if isequal(new_centers,centers)
       break;
   end
   centers=new_centers;   
end
disp(ites)


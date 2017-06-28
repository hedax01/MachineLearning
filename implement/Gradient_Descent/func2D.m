classdef func2D
    %2D function prepresent by class
    %   Detailed explanation goes here
    
    properties
        func;
        x; 
        y;
        z;
    end
    
    methods
        function plotSuft(obj,x1,x2,dx,y1,y2,dy)
            [X,Y]=meshgrid(x1:dx:x2,y1:dy:y2);
            Z=obj.func(X,Y);
            surf(X,Y,Z);
        end
        function surf(obj,X,Y)
            n=length(X);
            if(n~=3)
                return
            end
            m=length(Y);
            if(m~=3)
               return 
            end
            [X1,Y1]=meshgrid(X(1):X(3):X(2),Y(1):Y(3):Y(2));
            Z=obj.func(X1,Y1);
            figure;
            surf(X1,Y1,Z);
        end
        function contour(obj,X,Y, nline)
            n=length(X);
            if(n~=3)
                return
            end
            m=length(Y);
            if(m~=3)
               return 
            end
            [X1,Y1]=meshgrid(X(1):X(3):X(2),Y(1):Y(3):Y(2));
            Z=obj.func(X1,Y1);
            figure;
            contour(X1,Y1,Z,nline);
        end
        function val=f(obj,x)
           val=obj.func(x) ;
        end
    end
    
end


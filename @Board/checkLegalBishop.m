function y = checkLegalBishop(b,x1,y1,x2,y2,dx,dy)

%fprintf('Identifier %d\n',1);

if abs(dx)>0 && abs(dy)>0 && abs(dx)==abs(dy)
 %   fprintf('Identifier %d\n',2);
    if dy>0 && dx>0
  %      fprintf('Identifier %d\n',3);
        for i=1:y2-y1-1
            if ~isempty(b.boxes(x1+i,y1+i).ghuti.name)
                y=0;
                return
            end
        end
        y=1;
    elseif dy<0 && dx>0
   %     fprintf('Identifier %d\n',4);

        for i=1:y1-y2-1
            if ~isempty(b.boxes(x1+i,y1-i).ghuti.name)
                y=0;
                return
            end
        end
        y=1;
    elseif dy>0 && dx<0
    %    fprintf('Identifier %d\n',5);
        for i=1:y2-y1-1
            if ~isempty(b.boxes(x2+i,y2-i).ghuti.name)
     %           fprintf('Identifier %d\n',7);
                x2;
                y1;
                y=0;
                return
            end
        end
        y=1;
    elseif dy<0 && dx<0
      %  fprintf('Identifier %d\n',6);
        for i=1:y1-y2-1
            if ~isempty(b.boxes(x2+i,y2+i).ghuti.name)
                y=0;
                return
            end
        end
        y=1;
    end
    
else
    y=0;
    return
end
end

%         if abs(dx)>0 && abs(dy)>0 && abs(dx)==abs(dy)
%             if dy>0 && dx>0
%                 for i=1:y2-y1-1
%                     if ~isempty(b.boxes(x1+i,y1+i).ghuti.name)
%                         y=0;
%                         return
%                     end
%                 end
%                 y=1;
%             elseif dy<0 && dx>0
%                 for i=1:y1-y2-1
%                     if ~isempty(b.boxes(x1+i,y1-i).ghuti.name)
%                         y=0;
%                         return
%                     end
%                 end
%                 y=1;
%             elseif dy>0 && dx<0
%                 for i=1:y2-y1-1
%                     if ~isempty(b.boxes(x2+i,y2-i).ghuti.name)
%                         y=0;
%                         return
%                     end
%                 end
%                 y=1;
%             elseif dy<0 && dx<0
%                 for i=1:y1-y2-1
%                     if ~isempty(b.boxes(x2+i,y2+i).ghuti.name)
%                         y=0;
%                         return
%                     end
%                 end
%                 y=1;
%             end
%
%         else
%             y=0;
%             return
%         end
%
%


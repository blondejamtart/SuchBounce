function filewrite(file,var,lang)

dumpfile = fopen(file,'w');

if strcmp(lang,'C++')
    
    if ndims(var) == 3
        for i = 1:size(var,1)
            i
            tempstr = num2str(var(i,1,:),'%+10.13e, ');
            writestr = ['{{' tempstr];
            for j = 2:size(var,2)-1
                tempstr = num2str(var(i,j,:),'%+10.13e, ');
                writepart = [' {' tempstr];
                writestr = [writestr ' ' num2str(0,'%+10.13e') '},' writepart];
            end
            tempstr = num2str(var(i,size(var,2),:),'%+10.13e, ');
            writepart = [' {' tempstr];
            writestr = [writestr ' ' num2str(0,'%+10.13e') '},' writepart ' ' num2str(0,'%+10.13e') '}}'];
            fprintf(dumpfile,'%s\n',writestr);
        end
    else
        for i = 1:size(var,1)
            tempstr = num2str(var(i,:),'%+10.13e, ');
            writestr = ['{' tempstr(1:length(tempstr) - 1) '}'];
            fprintf(dumpfile,'%s\n',writestr);
        end
        
    end
    
elseif strcmp(lang,'init')
    
    if ndims(var) == 3
        for i = 1:size(var,2)            
            tempstr_0 = num2str(var(1,i,1:2),'%+10.13e, ');
            tempstr_1 = num2str(var(1,i,3),'%+10.13e');
            writestr = [tempstr_0 ' ' tempstr_1];
            fprintf(dumpfile,'%s\n',writestr);
        end        
    elseif ndims(var) == 2
        for i = 1:size(var,2)           
            tempstr= num2str(var(1,i),'%+10.13e');
            fprintf(dumpfile,'%s\n',tempstr);
        end
        
    end
    
else
    
    %     if ndims(var) == 3
    %         for i = 1:size(var,1)
    %             tempstr = num2str(var(i,1,:));
    %             writestr = tempstr(1:length(num2str(var(:,1,i)))-1);
    %             for j = 2:size(var,2)-1
    %                 tempstr = num2str(var(i,j,:));
    %                 writepart = tempstr(2:length(num2str(var(i,j,:)))-1);
    %                 writestr = [writestr ';' writepart];
    %             end
    %             tempstr = num2str(var(i,size(var,2),:));
    %             writepart = tempstr(2:length(string(var(:,j,i)))-1);
    %             writestr = [writestr ';' writepart ']\n'];
    %             write(dumpfile,writestr);
    %         end
    %     else
    %          for i = 1:size(var,2)
    %             writestr = string(var(:,i)')(1:length(string(var(:,i)])));
    %             writestr = [writestr '\n'];
    %             write(dumpfile,writestr);
    %         end
    %     end
    
end

fclose(dumpfile);

end
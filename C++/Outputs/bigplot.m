figure; 
hold on
for i = 1:16
    
    plot(1:ii,R0(:,i),1:ii,R(:,i))
    %plot(v_orb(:,i))
    %plot(2:ii,T_parts(2:ii,1,i)-T0(2:ii,i)/2,2:ii,T_parts(2:ii,2,i)-T0(2:ii,i)/2)
   % plot(Tv(2:ii,1,i)+2*V(2:ii,1,i)-T0(2:ii,i)/2)
end

% for i=2.5:0.5:6
i=5;
stup=num2str(i);
set_param('stiall/Step','After',stup);
[t,x]=sim('stiall',[0 15]);
n=round(length(t)-length(t)/10);
h1=figure(1);
hold on;
plot(t,x(:,1)*1000,t,x(:,2)*1000);
plot(t,x(:,17),t,-x(:,18));
text(t(n),x(n,7)+x(n,8),strcat(' \leftarrow ',stup),'FontSize',14);
grid on;
saveas(h1,strcat('osnov',stup,'.jpg'));
% close(h1);
h1=figure(2);
hold on;
plot(t,x(:,7)+x(:,8));
text(t(n),x(n,17),strcat(' \leftarrow ',stup),'FontSize',14);
grid on;
saveas(h1,strcat('raznfaz',stup,'.jpg'));
% close(h1);
% end
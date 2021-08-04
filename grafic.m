function grafic(A,R,T,N,Vt,Is)

RadioGroup=findobj(gcf,'Tag','radiobutton');
Opt=get(get(RadioGroup,'SelectedObject'),'String');
 F=1/T; 
 t=0:T/100:N*T;
 if strcmp(Opt,'Sinus')==1
  uin=A.*sin(2.*pi.*F.*t);
 end
 if strcmp(Opt,'Dreptunghi')==1
     uin=A*square(2*pi*F*t);
 end
 if strcmp(Opt,'Triunghi')==1
  uin=(2*A/pi)*asin(sin(2.*pi.*F.*t));
 end
  subplot(3,2,2);
  plot(t,uin,'-r');
  grid on;
  title('Tensiunea de intrare[Uin]','FontSize',15);
  ylabel('Uin [V]');
  xlabel('Timpul [s]');
  
  uout=(-Vt)*log(uin/(R*Is));
  subplot(3,2,4);
  plot(t,uout, '-b');
  grid on;
  title('Tensiunea de iesire[Uout]','FontSize',15);
  ylabel('Uout [V]');
  xlabel('Timpul [s]');
  
  subplot(3, 2, 6);
  Img1=imread('imagine1.png');
  image(Img1);
  set(gca,'Position',[0.1 0.05 0.4 0.3 ]);
  axis off;

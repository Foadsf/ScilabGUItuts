f=figure(); //Создание графического объекта.
      //Устанавливаем размер окна.
      set(f,'position',[0,0,700,300])
      //Устанавливаем заголовок окна.
      set(f,'figure_name','УРАВНЕНИЕ');
      //Создание текстовых полей для подписей полей ввода
      //коэффициентов.
      //Подпись A=.
      lab_a=uicontrol(f,'style','text','string','A=','position',...
      [50, 250, 100, 20]);
      //Подпись B=.
      lab_b=uicontrol(f,'style','text','string','B=','position',...
      [150, 250, 100, 20]);
      //Подпись C=.
      lab_c=uicontrol(f,'style','text','string','C=','position',...
      [250, 250, 100, 20]);
      //Поле редактирования для ввода коэффициента a.
      edit_a=uicontrol(f,'style','edit','string','1','position',...
      [50, 230, 100, 20]);
      //Поле редактирования для ввода коэффициента b.
      edit_b=uicontrol(f,'style','edit','string','2','position',...
      [150, 230, 100, 20]);
      //Поле редактирования для ввода коэффициента c.
      edit_c=uicontrol(f,'style','edit','string','1','position',...
      [250, 230, 100, 20]);
      //Текстовое поле, определяющее вывод результатов.
      textresult=uicontrol(f,'style','text','string','','position',...
      [5, 80, 650, 20]);
      //Флажок, отвечающий за выбор типа уравнения.
      radio_bikv=uicontrol('style','radiobutton','string',...
      'Биквадратное уравнение?', 'value',1,'position',...
      [100,100,300,20]);


      BtSolve=uicontrol('style','pushbutton','string','Решить',...
     'CallBack', 'Solve','position',[50,50,120,20]);
     BtClose=uicontrol('style','pushbutton','string','Закрыть',...
     'CallBack', '_Close','position',[300,50,120,20]);
     //Функция решения уравнения.
     function Solve()
     //Считываем значение переменных из текстовых полей и
     //преобразовываем их к числовому типу.
     a=eval(get(edit_a,'string'));
     b=eval(get(edit_b,'string'));
     c=eval(get(edit_c,'string'));
     d=b*b-4*a*c;
     //Проверяем значение флажка, если флажок выключен,
     if get(radio_bikv,'value')==0
     //то решаем квадратное уравнение,
     if d<0
     set(textresult,'string','Нет решения квадратного уравнения');
     else
     x1=(-b+sqrt(d))/2/a;
     x2=(-b-sqrt(d))/2/a;
     set(textresult,'string',sprintf
     ("2 корня квадратного уравнения\t x1=%1.2f\tx2=%1.2f",x1,x2));
     end;
     //если флажок включен,
     else
     //то решаем биквадратное уравнение.
     if d<0
     set(textresult,'string','Нет решения биквадратного уравнения');
     else
       y1=(-b+sqrt(d))/2/a;
       y2=(-b-sqrt(d))/2/a;
       if(y1<0)&(y2<0)
     set(textresult,'string','Нет решения биквадратного уравнения');
      elseif (y1>=0)&(y2>=0)
      x1=sqrt(y1);x2=-x1;x3=sqrt(y2);x4=-x3;
     set(textresult,'string',sprintf("4 корня биквадратного...
     уравнения \t x1=%1.2f\tx2=%1.2f\tx3=%1.2f\tx4=%1.2f",...
     x1,x2,x3,x4));
      else
      if y1>=0
         x1=sqrt(y1);x2=-x1;
      else
         x1=sqrt(y2);x2=-x1;
      end;
      set(textresult,'string',sprintf
         ("2корня биквадратного уравнения\t x1=%1.2f\tx2=%1.2f",x1,x2));
          end;
         end;
         end
         endfunction
         // Функция закрытия окна.
         function _Close()
         close(f)
         endfunction

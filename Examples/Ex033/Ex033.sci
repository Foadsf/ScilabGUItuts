//Создаем графическое окно.
     hFig=figure('Position',[50,50,200,200]);
     //Создание переключателей
     hRb1=uicontrol('Style','radiobutton','String','sin(x)',...
     'value',1, 'Position',[25,100,60,20]);
     hRb2=uicontrol('Style','radiobutton','String','cos(x)',...
     'value',1, 'Position',[25,140,60,20]);
     //Создаем кнопку с именем Plot, которая с помощью обработчика
     //Radio строит график функции в соответствии с положением
     //переключателей.
     Button=uicontrol('style','pushbutton','string','Plot',...
     'position',[20,50,80,20],'CallBack','Radio');
     //Создаем кнопку с именем Close, которая с помощью обработчика
     //Final закрывает окно.
     Button1=uicontrol('style','pushbutton','string','Close',...
     'position',[20,25,80,20],'CallBack','Final');
     //Функция Radio, реагирующая на щелчок по кнопке
     function Radio()
        newaxes;
        x=-2*%pi:0.1:2*%pi;
        if get(hRb1,'value')==1 //Если активна первая кнопка,
        y=sin(x);
        plot(x,y,'-r'); //то построение синусоиды
        xgrid();
        end;
        if get(hRb2,'value')==1 //Если активна вторая кнопка,
        y=cos(x);
        plot(x,y,'-b'); //то построение косинусоиды
        xgrid(); //Нанесение сетки на график
        end;
        endfunction
        //Функция, отвечающая за кнопку Close и закрывающая окно.
        function Final()
        close(hFig);
        endfunction

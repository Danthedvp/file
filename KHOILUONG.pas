var
    h1,h2:text;
    n,g:byte;
    arr:array [1..200] of integer;
    ans:array [1..10000000] of integer;
    i,j:integer;
    dem:longint;

begin
    assign(h1,'KHOILUONG.INP');
    assign(h2,'KHOILUONG.OUT');
    reset(h1);
    rewrite(h2);

    readln(h1,g);
    n:= 2;
    read(h1,arr[1]);
    dem:= 1;

    while g > 1 do
    begin
        read(h1,arr[n]);
        for i:= n - 1 downto 1 do
        begin
            ans[dem]:= arr[n] + arr[i];
            INC(dem);
        end;
        DEC(dem);
        if dem > 0 then
        begin
            for i:= 1 to dem - n + 1 do
            begin
                ans[dem + i]:= arr[n] + ans[i];
            end;
            dem:=dem + (dem - n + 2);
        end;
        INC(n);
        DEC(g);
    end;

    for i:= 1 to n - 1 do
    begin
        ans[dem]:= arr[i];
        INC(dem);
    end;

    DEC(dem);
    for i:= 1 to dem - 1 do
    begin
        if ans[i] > ans[i + 1] then
        begin
            while ans[i] > ans[i + 1] do
            begin
                for j:= 1 to i do
                begin
                    if ans[j] > ans[i + 1] then
                    begin
                        ans[j]:= ans[i + 1] + ans[j];
                        ans[i + 1]:= ans[j] - ans[i + 1];
                        ans[j]:= ans[j] - ans[i + 1];
                    end;
                end;
            end;
        end;
    end;
    for i:= 1 to dem do writeln(h2,ans[i]);


    close(h1);
    close(h2);
end.

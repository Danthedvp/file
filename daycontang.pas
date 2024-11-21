var
  h1, h2: text;
  n1, i, n, j, count: integer;
  arr: array[1..10000] of longint;

function f(n, n1, count: integer): integer;
begin
  if n1 = 0 then
  begin
    if count > j then
    begin
      j := count;
      f := count;
    end
    else
      f := j;
  end
  else
  begin

      if arr[n] > arr[n1] then
        f := f(n1, n1 - 1, count + 1) else f:= f(n1,n1 - 1,1);
        f := f(n, n1 - 1, count);

  end;
end;

begin
  assign(h1, 'Daycontang.INP');
  assign(h2, 'Daycontang.OUT');
  reset(h1);
  rewrite(h2);

  readln(h1, n);
  for i := 1 to n do
  begin
    read(h1, arr[i]);
  end;

  n1 := n - 1;
  j := 0;
  count := 1;
  write(h2, f(n, n1, count));

  close(h1);
  close(h2);
end.
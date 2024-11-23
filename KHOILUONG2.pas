var n,i,j,dem,tong,c : longint;
    a : array[1..1000] of longint;
    b : array[1..100000] of boolean;
begin
fillchar(b,sizeof(b),false);
readln(n);
tong:=0;
for i := 1 to n do 
 begin
 read(a[i]);
 tong:=tong+a[i];
 end;
b[0]:=true;
for i := 1 to n do
 for j := tong downto a[i] do
  if b[j] = false then
   if b[j-a[i]]=true then b[j]:=true; 
dem:=0;
for i := 1 to tong do if b[i] = true then  inc(dem);
writeln(dem);
for i := 1 to tong do if b[i] = true then  write(i,' '); 
end.
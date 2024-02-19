Uses Crt;
var ca: byte;
f : text;
n:integer;
m:array of integer;

procedure array_from_file(ff : text);
var x : integer;
begin
  reset(ff);
  while not Eof(ff) do begin
    n := n + 1;
    readln(ff,x);
    Setlength(M, n);
    M[n-1] := x;
  end;
  CloseFile(ff);
end;

procedure continuee;
var ch : char;
begin
  repeat
    read(ch);
  until ch = #13;
end;

procedure proc1;
var a: array of integer;
i,j,max,id_max,n:integer;
begin 
  writeln();
  J:= n;
   while j > 1 do begin
        max := a[1];
        id_max := 1;
        for i:= 0 to j-1 do
            if a[i]>max then begin
                max := a[i];
                id_max := i
            end;
        a[id_max] := a[j-1];
        a[j-1] := max;
        j:=j - 1
    end;
    for i := 0 to n-1 do
        write(a[i]:4);
    
    continuee;
end;

type  TArray=array [1..10] of integer;
Procedure proc2;
procedure toPyr(var d:TArray; n:integer);
var i:integer;
begin
  for i:=n div 2 downto 1 do begin
    if 2*i<=n then if d[i]<d[2*i] then swap(d[i],d[2*i]);
    if 2*i+1<=n then if d[i]<d[2*i+1] then swap(d[i],d[2*i+1]);
  end;
end;
   
procedure left(var d:TArray; n:integer);
var i:integer;
    t:integer;
begin
  t:=d[1];
  for i:=1 to n-1 do
    d[i]:=d[i+1];
  d[n]:=t;
end;
   

var a:TArray;
i,n:integer;
inputt,outputt: text;
begin
  for i:=n-1 downto 0 do begin
    topyr(a,i);
    left(a,n);
  end;
  writeln();
  writeln('Сортируем');
  for i:=0 to n-1 do begin
   write (a[i]:4);
   end;
   continuee;
end;

begin
  repeat
    ClrScr;
    var gg : integer;
    readln(gg);
    case gg of
      1: assign(f, 'array1.txt');
      2: assign(f, 'array2.txt');
    end;
    array_from_file(f);
    Writeln('Сортировка алгоритма выбора - 1');
    writeln('Сортировака пирамидальным алгоритмом - 2');
    Writeln('Выход - 0');
    write('Выберите программу: ');
    readln(ca);
    case ca of 
      1: proc1;
      2: proc2;
    end;
  until ca=0;
end.
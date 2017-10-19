//
// Pascal-Performance 
// Version 0.0.1 
// By: Vernieri
// 19 Octouber 2017
// GitHub: github.com/vernieri
//

program pascal_performance;
uses DateUtils, CRT, sysutils;


var vector: array[0..99999] of longint;
	FromTime, ToTime: TDateTime;
  	DiffSeconds: real;
  	//x: longint;

Procedure Prime;	
	var p, e, n, primes: integer;
	i: longint;

	begin
	primes := 0;

	for i:=0 to 99999 do
	begin
		e := 0;
		n := vector[i];
		p := 2;

		while p<n do
		begin
			if(n mod p <> 0)then
				begin
					e:=e+1;

				end;
			p:=p+1;	

		end;

		if(e+2 = n)then
			begin 
			primes:=primes+1;
			end;
	end;

	writeln('Primes numbers found: ', primes);
	end;


Procedure Randomico; 
	var
	i : longint;

	begin 
		writeln('Lets Generate some numbers: ');
		for i:=0 to 99999 do
			begin
				//randomize;
				vector[i] := (random(199999));

			end;

		for i:=0 to 99999 do
			begin
				writeln('Random Numbers: ', vector[i]);

			end;

		Prime;

	end;


Begin

	FromTime := Now;

	//x := 64000;  
	// You can define a X and but in the Loops if u want
	// example: for i:=0 to x do
	
 	Randomico;

  ToTime := Now;
  DiffSeconds := SecondsBetween(ToTime,FromTime);
  writeln('Time in seconds: ', DiffSeconds);

End.

//fpc pascal-performance

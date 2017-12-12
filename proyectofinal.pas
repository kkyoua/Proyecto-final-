unit submenu;

interface 
	
	type Tproducto = record
	
						nombre : string;
						cantexis : string;
						cantmin : string;
						sw : boolean;
					end;
					
	type TNodo = record 
					
					info : Tproducto;
					next : ^TNodo;
					back : ^TNodo;
				  end;
	
	
puntero=^TNodo;

	
	


procedure crear_lista (var a,u:TPuntero);
begin

  new(a);
  new(u);
  u:=a^.next;
  a^.back:=nil;
  u^.next:=nil;                                                                                                                                                  
  u^.back:=a;
  
end;

{Fin accion : Crear lista  -------- Inicio accion : alta de productos}


procedure altaprod (var p:puntero);
var
	q,aux:puntero;
begin

	new (q)
	writeln('Ingrese el nombre del producto');
	readln(p.nombre);
	writeln('Ingrese la cantidad existente en stock');
	readln(prod.cantexis);
	writeln('ingrese la cantidad minima de stock a tener de este producto');
	readln(prod.cantmin);
end;

{Fin accion : Alta de productos -------- Inicio accion : Baja y Enumeracion de productos}

procedure bajaprod(var p:Tproducto)
var
	
	i,j : integer;
	aux,aux2 : puntero;

begin
	i:=1;
	aux:=p
	
	while (aux^).next<>nil do 
		begin
		writeln(i,'.-',(aux^).info);
		i:=i+1;
		aux:=(aux^).next;
		end;
		
	wireln('Ingrese el numero del producto que desea eliminar');
	readln(j);
	
	while 





end;



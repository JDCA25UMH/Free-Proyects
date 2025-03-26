
require "canvas"
local win=ui.Window("Calculadora", "fixed",
  700, 700)
local canvas=ui.Canvas(win,0,0, win.width, win.height)

function insidezero(x,y, tecla_cero)
	return x >= tecla_cero.x and
x<= tecla_cero.x + tecla_cero.width and
y>= tecla_cero.y and
y<= tecla_cero.y + tecla_cero.height 

end

function insideone(x,y, tecla_uno)
return x >= tecla_uno.x and
x<= tecla_uno.x + tecla_uno.width and
y>= tecla_uno.y and
y<= tecla_uno.y + tecla_uno.height 

end

function insidetwo(x,y, tecla_dos)
return x >= tecla_dos.x and
x<= tecla_dos.x + tecla_dos.width and
y>= tecla_dos.y and
y<= tecla_dos.y + tecla_dos.height 

end

function insidethree(x,y, tecla_tres)
return x >= tecla_tres.x and
x<= tecla_tres.x + tecla_tres.width and
y>= tecla_tres.y and
y<= tecla_tres.y + tecla_tres.height 

end

function insidefour(x,y, tecla_cuatro)
return x >= tecla_cuatro.x and
x<= tecla_cuatro.x + tecla_cuatro.width and
y>= tecla_cuatro.y and
y<= tecla_cuatro.y + tecla_cuatro.height 
end

function insidefive(x,y, tecla_cinco)
return x >= tecla_cinco.x and
x<= tecla_cinco.x + tecla_cinco.width and
y>= tecla_cinco.y and
y<= tecla_cinco.y + tecla_cinco.height 

end

function insidesix(x,y, tecla_seis)
return x >= tecla_seis.x and
x<= tecla_seis.x + tecla_seis.width and
y>= tecla_seis.y and
y<= tecla_seis.y + tecla_seis.height 

end

function insideseven(x, y, tecla_siete)
return x >= tecla_siete.x and
x<= tecla_siete.x + tecla_siete.width and
y>= tecla_siete.y and
y<= tecla_siete.y + tecla_siete.height 
end 

function insideeight(x,y,tecla_ocho )
return x >= tecla_ocho.x and
x<= tecla_ocho.x + tecla_ocho.width and
y>= tecla_ocho.y and
y<= tecla_ocho.y + tecla_ocho.height 
end

function insidenine(x,y, tecla_nueve)
return x >= tecla_nueve.x and
x<= tecla_nueve.x + tecla_nueve.width and
y>= tecla_nueve.y and
y<= tecla_nueve.y + tecla_nueve.height 

end

function insidedelete(x,y, tecla_delete)
return x >= tecla_delete.x and
x<= tecla_delete.x + tecla_delete.width and
y>= tecla_delete.y and
y<= tecla_delete.y + tecla_delete.height 
end

function insidemas(x,y, tecla_mas)
return x >= tecla_mas.x and
x<= tecla_mas.x + tecla_mas.width and
y>= tecla_mas.y and
y<= tecla_mas.y + tecla_mas.height 

end

function insideequal(x,y, tecla_igual)

return x >= tecla_igual.x and
x<= tecla_igual.x + tecla_igual.width and
y>= tecla_igual.y and
y<= tecla_igual.y + tecla_igual.height 

end

function insidemenos(x,y, tecla_menos)
return x>= tecla_menos.x and
x<=tecla_menos.x + tecla_menos.width and
y>= tecla_menos.y and
y<= tecla_menos.y + tecla_menos.height

end

function insidemulti(x,y,tecla_multiplicar)
return x>= tecla_multiplicar.x and
x<=tecla_multiplicar.x + tecla_multiplicar.width and
y>= tecla_multiplicar.y and
y<=tecla_multiplicar.y + tecla_multiplicar.height
end

function insidedividir(x,y,tecla_dividir)
  return x>= tecla_dividir.x and  
  x<= tecla_dividir.x + tecla_dividir.width and
  y>= tecla_dividir.y and
  y<= tecla_dividir.y + tecla_dividir.height 
end

function insideerase(x,y,tecla_eraser)
return x>=tecla_eraser.x and
x<=tecla_eraser.x + tecla_eraser.width and
y>=tecla_eraser.y and
y<=tecla_eraser.y + tecla_eraser.height
end

function insidepoint(x,y,tecla_point)
   return x>= tecla_point.x and
   x<=tecla_point.x + tecla_point.width and
   y>=tecla_point.y and
   y<=tecla_point.y + tecla_point.height

end








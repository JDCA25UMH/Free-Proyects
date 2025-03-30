local ui= require "ui"
require "canvas"

local buttom= require "buttom"

local num= require ("num")

local win=ui.Window("Calculadora Simple, operaciones con 2 digitos", "fixed",
  700, 700)
local canvas=ui.Canvas(win,0,0, win.width, win.height)

canvas.aling="center"
canvas.bgcolor=0xFFFFFFFF 
 ancho= canvas.width
 alto= canvas.height


size=50
text1=""
text2=""

resultado=""
firstnumer=firstnumer or 0
secondnumer=0
resultadosuma=0
 

  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_mas=false
  entrada_erase=false
  entrada_menos=false
  entrada_multiplicar=false
  entrada_dividir=false
  entrada_point=false
  
tecla_cero={
  x=ancho/2 -(size/2),
  y=alto/2 + (size*3.5),
  width=size,
  height=size
}

tecla_pantalla={
  x=ancho/2 - (size*2),
  y=alto/3.4,
  width=size*4 + size/3,
  height=size}

tecla_uno= {
	x= ancho/2 - (size*2),
	y=  alto/2 - size, 
	width= size, 
	height= size
}

tecla_dos = {

	x= ancho/2 - (size/2) ,
	y= alto/2 - size,
	width= size, 
	height= size
}

tecla_tres = {
	x= ancho/2 + size,
	y= alto/ 2- size,
	width= size,
	height= size
}

tecla_cuatro= {
	x= ancho/2 - (size*2),
	y= alto/2 + (size/2),
	width= size,
	height= size
}

tecla_cinco = {
	x= ancho/2 -(size/2),
	y= alto/2 + (size/2),
	width= size,
	height= size
}

tecla_seis= {
	x= ancho/2 + size,
	y= alto/2 + (size/2),
	width= size,
	height= size, 
}

tecla_siete= {
 x= ancho/2 - (size*2),
 y= alto/2 + (size*2),
 width= size,
 height= size
}

tecla_ocho= {
	x= ancho/2 - (size/2),
	y= alto/2 + (size*2),
	width= size,
	height= size
}

tecla_nueve = {
	x= ancho/2 + size,
	y= alto/2 + (size*2),
	width= size,
	height=size
}

tecla_delete= {
	x= ancho/2 + (size*2.5),
	y= alto/ 2- size,
	width= size,
	height=size

}

tecla_mas = {
x= ancho/2 + (size*2.5),
y= alto/2 + (size/2), 
width=size,
height=size

}

tecla_igual = {

	x=  ancho/2 + size,
	y= alto/2 + (size*3.5), 
	width=size,
	height= size
}

tecla_eraser={

	x=ancho/2 + (size*4),
	y=alto/2 -size,
	width=size, 
	height=size
}

tecla_menos = {
	x= ancho/2 + (size*2.5),
	y= alto/2 + (size*2),
	width=size,
	height=size
}

tecla_multiplicar={
    x= ancho/2 + (size*4),
	y=alto/2 + (size/2),
	width=size,
	height=size
}

tecla_dividir={
    x= ancho/2 + (size*4),
    y= alto/2 +(size*2),
    width=size,
    height=size
  }
tecla_point={
	x= ancho/2 - (size*2),
	y=alto/2 + (size*3.5),
	width=size,
	height=size
}

 label=ui.Label(win, text1..text2 ,math.floor(tecla_pantalla.x)+25, math.floor(tecla_pantalla.y)+25)
 
  label01= ui.Label(win, resultado,math.floor(tecla_pantalla.x)+25, math.floor(tecla_pantalla.y)+25)
 operacion, primer_numero, segundo_numero =operation (firstnumer, secondnumer)

function canvas:onClick(x, y)
 operacion, primer_numero, segundo_numero =operation (firstnumer, secondnumer)
   if primer_numero then 
if insidezero(x,y,tecla_cero)then

  entrada_erase=false
  entrada_activacero=true
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
  entrada_point=false
  text1=text1.."0"
  label.text=text1
   
  firstnumer=tonumber(text1)
  label:show()
elseif insideone(x,y,tecla_uno)then
  
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=true
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
 text1=text1.."1"
  label.text=text1
  label.bgcolor=0xFFFFFFFF 
  firstnumer=tonumber(text1)
  label:show()
elseif insidetwo(x,y,tecla_dos)then
entrada_mas=false
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=true
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
   text1=text1.."2"
  label.text=text1
  firstnumer=tonumber(text1)
  label:show()
elseif insidethree(x,y,tecla_tres)then

  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=true
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
     text1=text1.."3"
  label.text=text1
  label.bgcolor=0xFFFFFFFF 
    firstnumer=tonumber(text1)
  label:show()
elseif insidefour(x,y,tecla_cuatro)then
entrada_mas=false
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=true
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
  text1= text1.."4"
  label.text=text1
firstnumer=tonumber(text1)
  label:show()
elseif insidefive(x,y,tecla_cinco)then
   
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=true
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false

   text1= text1.."5"
  label.text=text1
    firstnumer=tonumber(text1)
  label:show()
elseif insidesix(x,y,tecla_seis)then

  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=true
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
   text1= text1.."6"
  label.text=text1
  label.bgcolor=0xFFFFFFFF 
    firstnumer=tonumber(text1)
  label:show()
elseif insideseven(x,y,tecla_siete)then 
 
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=true
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
    text1= text1.."7"
  label.text=text1
    label.bgcolor=0xFFFFFFFF  
    firstnumer=tonumber(text1)
  label:show()
elseif insideeight(x,y,tecla_ocho)then
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=true
  entrada_activanine=false
  entrada_equal=false
      text1= text1.."8"
  label.text=text1
     label.bgcolor=0xFFFFFFFF 
    firstnumer=tonumber(text1)
  label:show()
elseif insidenine(x,y,tecla_nueve)then 
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=true
  entrada_equal=false
      text1= text1.."9"
  label.text=text1
     label.bgcolor=0xFFFFFFFF 
    firstnumer=tonumber(text1)
  label:show()
elseif insidedelete(x,y,tecla_delete)then
  entrada_mas=false
  entrada_delete=true
 entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
  
  if firstnumer == nil then 
     text1=""
    local firstnumer=0
   
  elseif secondnumer== nil then
     text2=""
    local secondnumer=0
    
  end
  
   if #text1 > 0 and (text1:sub(-1) == "+" or text1:sub(-1) == "-" or text1:sub(-1) == "*" or text1:sub(-1) == "/") then
        
        text1 = text1:sub(1, -2)
    end
  

if firstnumer<=0 then
  text1=""
  firstnumer=0
else
  firstnumer = tonumber(text1)
firstnumer = math.floor(firstnumer / 10)
text1=tostring(firstnumer)
  end

label.text = text1
label:show()
elseif insidepoint(x,y,tecla_point)then
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
  entrada_point=true
text1=text1.."."
label.texto=text1
firstnumer=tonumber(text1)
label:show()
end
end

if insidemas(x,y,tecla_mas)then
  
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
  entrada_mas=true
  entrada_erase=false
  entrada_multiplicar=false
  entrada_dividir=false
     
  text1=text1.."+"

  label.text=text1
  label:show()
end

if insidemenos(x,y,tecla_menos)then
  entrada_menos=true
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
  entrada_mas=false
  entrada_erase=false
  entrada_multiplicar=false
  entrada_dividir=false
  text1=text1.."-"
  label.text=text1
  label:show()
end

if insidemulti(x,y, tecla_multiplicar) then
  
  entrada_multiplicar=true
  entrada_menos=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
  entrada_mas=false
  entrada_erase=false
  entrada_dividir=false
  text1=text1.."*"
  label.text=text1
  label:show()
  end

if insidedividir(x,y, tecla_dividir) then
    entrada_multiplicar=false
  entrada_menos=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
  entrada_mas=false
  entrada_erase=false
  entrada_dividir=true
  text1=text1.."/"
  label.text=text1
  label:show()
  end

if segundo_numero then 
  if insidezero(x,y,tecla_cero)then
   entrada_erase=false
   entrada_equal=false
   entrada_erase=false
  entrada_activacero=true
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
entrada_delete=false
text2= text2.."0"
  label.text=text1..text2
  secondnumer=tonumber(text2)
  label:show()
elseif insideone(x,y,tecla_uno)then
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=true
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
  entrada_delete=false
text2= text2.."1"
  label.text=text1..text2
  secondnumer=tonumber(text2)
  label:show()
elseif insidetwo(x,y,tecla_dos)then

  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=true
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
   entrada_erase=false
  entrada_equal=false
text2= text2.."2"
  label.text=text1..text2
    secondnumer=tonumber(text2)
  label:show()
elseif insidethree(x,y,tecla_tres)then
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=true
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
text2= text2.."3"
  label.text=text1..text2
    secondnumer=tonumber(text2)
  label:show()
elseif insidefour(x,y,tecla_cuatro)then
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=true
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false

text2= text2.."4"
  label.text=text1..text2
    secondnumer=tonumber(text2)
  label:show()
elseif insidefive(x,y,tecla_cinco)then
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=true
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
 text2= text2.."5"
  label.text=text1..text2
    secondnumer=tonumber(text2)
  label:show()
elseif insidesix(x,y,tecla_seis)then
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=true
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
 text2= text2.."6"
  label.text=text1..text2
    secondnumer=tonumber(text2)
  label:show()
elseif insideseven(x,y,tecla_siete)then 
    entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=true
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
 text2= text2.."7"
  label.text=text1..text2
    secondnumer=tonumber(text2)
  label:show()
elseif insideeight(x,y,tecla_ocho)then
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=true
  entrada_activanine=false
  entrada_equal=false
text2= text2.."8"
  label.text=text1..text2
    secondnumer=tonumber(text2)
  label:show()
elseif insidenine(x,y,tecla_nueve)then 
  entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=true
  entrada_equal=false
  text2= text2.."9"
  label.text=text1..text2
    secondnumer=tonumber(text2)
  label:show()
elseif insidedelete(x,y,tecla_delete)then
          entrada_erase=false
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  entrada_equal=false
entrada_delete=true

if secondnumer ==0 then
  text2=""
else
  secondnumer = tonumber(text2)
secondnumer = math.floor(secondnumer / 10)
if secondnumer>0 then
text2=tostring(secondnumer)
end
end
 if #text2==0 then
    text1=text1:sub(1,-2)
  end
  
label.text = text1..text2
label:show()


elseif insidepoint(x,y,tecla_point)then
  entrada_equal=false
  entrada_erase=false
    entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false
  text2=text2..""
  label.text= text1..text2
  label:show()
end
  
 

if insideequal(x,y,tecla_igual)then 
  entrada_equal=true
  entrada_erase=false
    entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=false

  resultado= operar(firstnumer, secondnumer)
  label01.text= resultado
  label01:show()
  label:hide()
end

if insideerase(x,y,tecla_eraser)then
  entrada_erase=true
  entrada_activacero=false
  entrada_activaone=false
  entrada_activatwo=false
  entrada_activathree=false
  entrada_activafour=false
  entrada_activafive=false
  entrada_activasix=false
  entrada_activaseven=false
  entrada_activaeight=false
  entrada_activanine=true
  entrada_mas=false
  entrada_menos=false
  entrada_multiplicar=false
  entrada_dividir=false
entrada_equal=false
   text1=""
   text2=""
   firstnumer=0
   secondnumer=0
  resultado=0
collectgarbage("collect")
label.text=text1..text2
label01:hide()

operacion,primer_numero, segundo_numero =operation(firstnumer, secondnumer)
  end
end

end
function canvas:onPaint (x,y) 
  
  self:begin()
  
  self:rect(tecla_pantalla.x, tecla_pantalla.y, tecla_pantalla.x+ tecla_pantalla.width,tecla_pantalla.y+tecla_pantalla.height, 0xFFF,2)
  
 self:rect(tecla_cero.x, tecla_cero.y, tecla_cero.x+50, tecla_cero.y+ 50 ,0xFFF,2)
  self:print("0", tecla_cero.x +25, tecla_cero.y+25, 0xFFF)
  
  self:rect(tecla_uno.x, tecla_uno.y, tecla_uno.x+50, tecla_uno.y+50,0xFFF,2) 
  self:print("1", tecla_uno.x+25, tecla_uno.y+25, 0xFFF)
  
  self:rect(tecla_dos.x, tecla_dos.y, tecla_dos.x+50, tecla_dos.y +50, 0xFFF,2)
  self:print("2", tecla_dos.x+25, tecla_dos.y +25,0xFFF)
  
  self:rect(tecla_tres.x, tecla_tres.y, tecla_tres.x+50, tecla_tres.y +50, 0xFFF,2)
  self:print("3", tecla_tres.x+25, tecla_tres.y+25,0xFFF)
  
  self:rect(tecla_cuatro.x, tecla_cuatro.y, tecla_cuatro.x+50, tecla_cuatro.y+50, 0xFFF,2)
  self:print("4", tecla_cuatro.x+25, tecla_cuatro.y+25, 0xFFF)
  
  self:rect(tecla_cinco.x, tecla_cinco.y, tecla_cinco.x + 50, tecla_cinco.y+50, 0xFFF,2)
  self:print("5", tecla_cinco.x+25, tecla_cinco.y+25, 0xFFF)
  
  
  self:rect(tecla_seis.x, tecla_seis.y, tecla_seis.x +50, tecla_seis.y+50, 0xFFF,2)
  self:print("6", tecla_seis.x+25, tecla_seis.y+25, 0xFFF)
  
  self:rect(tecla_siete.x, tecla_siete.y, tecla_siete.x+50,tecla_siete.y+50,0xFFF,2)
  self:print("7", tecla_siete.x+25, tecla_siete.y+25)
  
  self:rect(tecla_ocho.x, tecla_ocho.y, tecla_ocho.x+50, tecla_ocho.y+50, 0xFFF,2)
  self:print("8", tecla_ocho.x+25,tecla_ocho.y+25)
  
  self:rect(tecla_nueve.x, tecla_nueve.y, tecla_nueve.x+50, tecla_nueve.y+50, 0xFFF,2)
  self:print("9", tecla_nueve.x+25, tecla_nueve.y+25)
  
  self:rect(tecla_igual.x, tecla_igual.y, tecla_igual.x+50, tecla_igual.y+50,0xFFF,2)
  self:print("=", tecla_igual.x+25, tecla_igual.y+25)
  
  self:rect(tecla_mas.x,tecla_mas.y,tecla_mas.x+50, tecla_mas.y+50, 0xFFF,2)
  self:print("+", tecla_mas.x+25, tecla_mas.y+25)
  
  self:rect(tecla_menos.x,tecla_menos.y,tecla_menos.x+50, tecla_menos.y+50, 0xFFF,2)
  self:print("-", tecla_menos.x+25, tecla_menos.y+25)
  
  self:rect(tecla_multiplicar.x,tecla_multiplicar.y, tecla_multiplicar.x+50, tecla_multiplicar.y+50, 0xFFF,2)
  self:print("*", tecla_multiplicar.x+25, tecla_multiplicar.y+25)
  
  self:rect(tecla_dividir.x, tecla_dividir.y, tecla_dividir.x+50, tecla_dividir.y+50, 0xFFF, 2)
  self:print("/", tecla_dividir.x+25, tecla_dividir.y+25)
  
  self:rect(tecla_point.x, tecla_point.y, tecla_point.x+50, tecla_point.y+50)
  self:print(".", tecla_point.x+25, tecla_point.y+25)
  
  self:rect(tecla_delete.x, tecla_delete.y, tecla_delete.x+50, tecla_delete.y+50)
   self:print("X", tecla_delete.x+25, tecla_delete.y+25)

   self:rect(tecla_eraser.x, tecla_eraser.y, tecla_eraser.x+50, tecla_eraser.y+50)
  self:print("CE",tecla_eraser.x+25, tecla_eraser.y+25)
  
 
self:flip()


end

ui.run(win):wait()

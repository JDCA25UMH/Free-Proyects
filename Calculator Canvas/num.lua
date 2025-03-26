
require "canvas"

function operation (firstnumer, secondnumer)
  firstnumer= tonumber(text1)
secondnumer=tonumber(text2)
  primer_numero=true
  segundo_numero=false

if entrada_erase then
  primer_numero=true
  segundo_numero=false

  end
  if entrada_mas then
    operacion="suma"
    primer_numero=false
    segundo_numero=true
      
elseif entrada_menos then
  operacion="resta"
  primer_numero=false
    segundo_numero=true
  elseif entrada_multiplicar then
    operacion="multiplication"
    primer_numero=false
    segundo_numero=true
  elseif entrada_dividir then
    operacion="division"
      primer_numero=false
    segundo_numero=true  
  end

  return operacion, primer_numero, segundo_numero, firstnumer, secondnumer
end



function operar(firstnumer, secondnumer)
  if operacion=="suma" and entrada_equal then
    resultado=firstnumer + secondnumer
  elseif operacion=="resta" and entrada_equal then
    resultado=firstnumer-secondnumer
  elseif operacion=="multiplication" and entrada_equal then
    resultado=firstnumer*secondnumer
  elseif operacion=="division" and entrada_equal then
    resultado=firstnumer/secondnumer
    end
  return resultado
end

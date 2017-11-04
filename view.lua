view = {
	
	controlador = nil,
	jogadorAtual = nil

}

function view:draw(controlador)
	self.controlador = controlador	
	self:desenharLinhas()
	self:desenharTabuleiro()
end

function view:desenharCirculoNaTela(posicao)

	local width = display.contentWidth
	local height = display.contentHeight

	if posicao == 1 then
		local circulo = display.newCircle(width/6, height/6, 30)
	elseif posicao == 2 then
		local circulo = display.newCircle(width/2, height/6, 30)		
	elseif posicao == 3 then
		local circulo = display.newCircle(width * 5/6, height/6, 30)
	elseif posicao == 4 then
		local circulo = display.newCircle(width/6, height/2, 30)
	elseif posicao == 5 then
		local circulo = display.newCircle(width/2, height/2, 30)
	elseif posicao == 6 then
		local circulo = display.newCircle(width * 5/6, height/2, 30)
	elseif posicao == 7 then
		local circulo = display.newCircle(width/6, height * 5/6, 30)
	elseif posicao == 8 then
		local circulo = display.newCircle(width/ 2, height *5/6, 30)
	elseif posicao == 9 then
		local circulo = display.newCircle(width * 5/6, height *5/6, 30)
	end

	
end

function view:desenharXNaTela(posicao)

	local width = display.contentWidth 
	local height = display.contentHeight 

	if posicao == 1 then
		local linhaUm = display.newLine(width/3, 0, 0,height/3)
		local linhaDois = display.newLine(0, 0,width/3 ,height/3)
	elseif posicao == 2 then
		local linhaUm = display.newLine(width/3, 0, width * 2/3,height/3)
		local linhaDois = display.newLine(width/3,height/3 ,width * 2/3,0)
	elseif posicao == 3 then
		local linhaUm = display.newLine(width*2/3, 0, width, height/3)
		local linhaDois = display.newLine(width*2/3, height/3, width, 0)
	elseif posicao == 4 then
		local linhaUm = display.newLine(0,height/3,width/3,height * 2/3)
		local linhaDois = display.newLine(0,height * 2/3, width/3, height/3)
	elseif posicao == 5 then
		local linhaUm = display.newLine(width/3,height/3,width * 2/3,height * 2/3)
		local linhaDois = display.newLine(width/3,height * 2/3,width * 2/3, height/3)
	elseif posicao == 6 then
		local linhaUm = display.newLine(width * 2/3, height/3, width, height * 2/3)
		local linhaDois = display.newLine(width * 2/3, height * 2/3, width, height/3)
	elseif posicao == 7 then
		local linhaUm = display.newLine(0,height * 2/3,width/3,height)
		local linhaDois = display.newLine(0,height,width/3,height * 2/3)
	elseif posicao == 8 then
		local linhaUm = display.newLine(width/3,height * 2/3, width * 2/3,height)
		local linhaDois = display.newLine(width/3,height, width * 2/3, height * 2/3)
	elseif posicao == 9 then
		local linhaUm = display.newLine(width * 2/3,height * 2/3, width ,height)
		local linhaDois = display.newLine(width * 2/3,height, width, height * 2/3)
	end
end

function view:desenharLinhas()

	local	lineUm = display.newLine(0, display.contentHeight/3, display.contentWidth,display.contentHeight/3)
	local	lineDois = display.newLine(0,display.contentHeight * 2/3, display.contentWidth,display.contentHeight * 2/3)

	local	colunaUm = display.newLine(display.contentWidth/3, 0, display.contentWidth/3,display.contentHeight)
	local	colunaDois = display.newLine(display.contentWidth * 2/3, 0, display.contentWidth * 2/3,display.contentHeight)
		
end

function novaJogada(evento)

	if evento.target == tabuleiro[1][1] then
		view:desenharCirculoNaTela(1)
	end
	if evento.target == tabuleiro[1][2] then
		view:desenharCirculoNaTela(2)
	end
	if evento.target == tabuleiro[1][3] then
		view:desenharCirculoNaTela(3)
	end
	if evento.target == tabuleiro[2][1] then
		view:desenharCirculoNaTela(4)
	end
	if evento.target == tabuleiro[2][2] then
		view:desenharCirculoNaTela(5)
	end
	if evento.target == tabuleiro[2][3] then
		view:desenharCirculoNaTela(6)
	end
	if evento.target == tabuleiro[3][1] then
		view:desenharCirculoNaTela(7)
	end
	if evento.target == tabuleiro[3][2] then
		view:desenharCirculoNaTela(8)
	end
	if evento.target == tabuleiro[3][3] then
		view:desenharCirculoNaTela(9)
	end
end


function view:desenharTabuleiro()

	tabuleiro = {}

	local larguraTela = display.contentWidth
	local alturaTela = display.contentHeight

	local larguraRet = larguraTela/3 - 2
	local alturaRet = alturaTela/3 - 2
	controleDois = 1

	for linha = 1, 3 do

		tabuleiro[linha] = {}
		controle = 1		
		
		for coluna = 1, 3 do			
			
			tabuleiro[linha][coluna] = display.newRect(larguraTela * controle / 6 ,alturaTela * controleDois/6, larguraRet, alturaRet)
			controle = controle + 2
			posicao = tabuleiro[linha][coluna]
			posicao:setFillColor(black)
			posicao:addEventListener("touch",novaJogada)
			
		end
		controleDois = controleDois + 2
	end
end

return view
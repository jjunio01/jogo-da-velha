local widget = require("widget")
local instancia = nil

view = {

	controlador = nil,
	tabuleiro = {}

}

function view:draw(controller)

	self.controlador = controller
	self:desenharLinhas()
	self:desenharTabuleiro()
	instancia = self
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

function view:jogada(posicao, linha, coluna)

	local jogador = self.controlador:jogadorAtual()

	if jogador == "X" then
		self.controlador.modelTabuleiro.tabuleiro[linha][coluna] = "X"
		self:desenharXNaTela(posicao)
		self.controlador:verificarTerminoJogo()
	elseif jogador == "O" then
		self.controlador.modelTabuleiro.tabuleiro[linha][coluna] = "O"
		self:desenharCirculoNaTela(posicao)
		self.controlador:verificarTerminoJogo()

	end
end

function novaJogada(evento)

	if evento.phase == "began" then
		print(view)
		if evento.target == view.tabuleiro[1][1] then
			instancia:jogada(1,1,1)
			local removerTouch = view.tabuleiro[1][1]
			removerTouch:removeEventListener("touch",novaJogada)
		elseif evento.target == view.tabuleiro[1][2] then
			instancia:jogada(2,1,2)
			local removerTouch = view.tabuleiro[1][2]
			removerTouch:removeEventListener("touch",novaJogada)
		elseif evento.target == view.tabuleiro[1][3] then
			instancia:jogada(3,1,3)
			local removerTouch = view.tabuleiro[1][3]
			removerTouch:removeEventListener("touch",novaJogada)
		elseif evento.target == view.tabuleiro[2][1] then
			instancia:jogada(4,2,1)
			local removerTouch = view.tabuleiro[2][1]
			removerTouch:removeEventListener("touch",novaJogada)
		elseif evento.target == view.tabuleiro[2][2] then
			instancia:jogada(5,2,2)
			local removerTouch = view.tabuleiro[2][2]
			removerTouch:removeEventListener("touch",novaJogada)
		elseif evento.target == view.tabuleiro[2][3] then
			instancia:jogada(6,2,3)
			local removerTouch = view.tabuleiro[2][3]
			removerTouch:removeEventListener("touch",novaJogada)
		elseif evento.target == view.tabuleiro[3][1] then
			instancia:jogada(7,3,1)
			local removerTouch = view.tabuleiro[3][1]
			removerTouch:removeEventListener("touch",novaJogada)
		elseif evento.target == view.tabuleiro[3][2] then
			instancia:jogada(8,3,2)
			local removerTouch = view.tabuleiro[3][2]
			removerTouch:removeEventListener("touch",novaJogada)
		elseif evento.target == view.tabuleiro[3][3] then
			instancia:jogada(9,3,3)
			local removerTouch = view.tabuleiro[3][3]
			removerTouch:removeEventListener("touch",novaJogada)
		end
	end
end

function view:desenharTabuleiro()

	local larguraTela = display.contentWidth
	local alturaTela = display.contentHeight

	local larguraRet = larguraTela/3 - 2
	local alturaRet = alturaTela/3 - 2
	local controleDois = 1

	for linha = 1, 3 do

		self.tabuleiro[linha] = {}
		local controle = 1

		for coluna = 1, 3 do

			self.tabuleiro[linha][coluna] = display.newRect(larguraTela * controle / 6 ,alturaTela * controleDois/6, larguraRet, alturaRet)
			controle = controle + 2
			self.tabuleiro[linha][coluna]:setFillColor(black)
			self.tabuleiro[linha][coluna]:addEventListener("touch",novaJogada)
		end
		controleDois = controleDois + 2
	end
end

function view:desabilitarTouch()

	for linha = 1, 3 do
		for coluna = 1, 3 do
			self.tabuleiro[linha][coluna]:removeEventListener("touch",novaJogada)
		end
	end
end

function view:empatou()

	local buttonEmpatou = widget.newButton(
    {
        left = 100,
        top = 200,
        id = "button1",
        label = "EMPATOU",
        shape = "rect"
    })

    self:encerrarJogo()
	--display.newText("Empatou", display.contentWidth/2,display.contentHeight/2,native.systemFont, 70 )
end

function view:vencedor()
	local buttonVenceu = widget.newButton(
    {
        left = 100,
        top = 200,
        id = "button1",
        label = "VENCEU",
        shape = "rect"
    })

	self:encerrarJogo()
	self:desabilitarTouch()
end

function view:encerrarJogo()

	function toqueButton(event)
		if  "ended" == event.phase then
         	self.controlador:draw()
		end
	end

	local button1 = widget.newButton(
    {
        left = 100,
        top = 300,
        id = "button1",
        label = "JOGAR NOVAMENTE",
        shape = "rect",
        onEvent = toqueButton
    })
end

return view

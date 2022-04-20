import wollok.game.*

object mario {
	var energia = 0.randomUpTo(10).truncate(0)
	var image = "player.png"
	var position = game.at(0.randomUpTo(game.width()).truncate(0), 0.randomUpTo(game.height()).truncate(0))
	method position(unaPosicion) {
		position = unaPosicion
	}
	method position(){
		return position
	}
	method image(unaImagen){
		image = unaImagen
	}
	method image(){
		return image
	}
	method energia(){
		return energia
	}
	method descontarEnergia(unValor){
		energia -= unValor
	}
	method estasVivo(){
		return energia > 0
	}
	method moverArriba(){
		if (self.position().y() < game.height()-1){
			self.position(self.position().up(1))
			self.descontarEnergia(1)
		}else{
			self.position(game.at(self.position().x(),0))
			self.descontarEnergia(2)
		}
		if (!self.estasVivo()){
			game.stop()
		}

	}
	method moverAbajo(){
		if (self.position().y() > 0){
			self.position(self.position().down(1))
			self.descontarEnergia(1)
		}else{
			self.position(game.at(self.position().x(),game.height()-1))
			self.descontarEnergia(2)
		}
		if (!self.estasVivo()){
			game.stop()
		}
	}
	method moverDerecha(){
		if (self.position().x() < game.width()-1){
			self.position(self.position().right(1))	
			self.descontarEnergia(1)		
		}else{
			self.position(game.at(0,self.position().y()))
			self.descontarEnergia(2)
		}
		if (!self.estasVivo()){
			game.stop()
		}
		
	}
	method moverIzquierda(){
		if (self.position().x() > 0){
			self.position(self.position().left(1))
			self.descontarEnergia(1)	
		}else{
			self.position(game.at(game.width()-1,self.position().y()))
			self.descontarEnergia(2)
		}
		if (!self.estasVivo()){
			game.stop()
		}
	}
	
}

object tomaco {
	var image = "tomaco.png"
	var position
	method position(unaPosicion) {
		position = unaPosicion
	}
	method position(){
		return position
	}
	method image(unaImagen){
		image = unaImagen
	}
	method image(){
		return image
	}
}

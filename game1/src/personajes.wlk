/** First Wollok example */
import wollok.game.*

object mario {
	var energia = 0.randomUpTo(10).truncate(0)
	var image = "player.png"
	var position = game.at(0.randomUpTo(game.width()).truncate(0), 0.randomUpTo(game.height()).truncate(0))
	method position(UnaPosicion) {
		position = UnaPosicion
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
}

object tomaco {
	var image = "tomaco.png"
	var position
	method position(UnaPosicion) {
		position = UnaPosicion
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

#config.ru
require 'rack'
class MiPrimeraWebApp #
	def call(env) #Info del Request
		#puts env
		[200, {'Content-type' => 'text/html'}, ['<p>Aliquam ligula mi, congue ac mauris ac, rutrum ultricies tellus. Praesent nisi nunc, interdum et felis eget, maximus faucibus sem. Nunc sed accumsan tortor. Donec vel nisi elementum, tincidunt nibh et, luctus dui. Nulla vitae rutrum tortor, vitae convallis nisi. Proin auctor vestibulum libero nec accumsan. In at feugiat diam. Duis in dolor quis velit lobortis dapibus eget in ligula. In laoreet elit vitae molestie consectetur. Donec aliquet ex eget urna fringilla placerat. Praesent ante ligula, dignissim consectetur arcu non, dignissim faucibus nibh.</p>']] #Respuesta
	end
end
run MiPrimeraWebApp.new

# 1 Agregar un código de respuesta 200.
# 2 Agregar en los Response Headers un Content-type de tipo text/html.
# 3 Agregar en el Response Body una etiqueta de párrafo que contenga un texto Lorem
#ipsum
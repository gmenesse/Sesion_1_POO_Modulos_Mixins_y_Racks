#config.ru
require 'rack'

class MiPrimeraWebApp
   def call(env)
     [200, {'Content-Type' => 'text/html'}, ['<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Voluptate, voluptatibus aperiam! Ea itaque id suscipit? Id, fugit assumenda accusantium eos doloremque aliquid veritatis vitae sint itaque consequuntur, pariatur obcaecati amet.</p>']]
   end
end

run MiPrimeraWebApp.new

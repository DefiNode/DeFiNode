# Magenta 12px Lauflicht Ring
import time
import board
import neopixel

#Grundeinstellung für Neopixel-Objekt
pixel_pin = board.D18
num_pixels = 12
ORDER = neopixel.GRB
pixels = neopixel.NeoPixel(pixel_pin, num_pixels, brightness=1, auto_write=False, pixel_order=ORDER)
# Mit brightness kann die Basishelligkeit des gesamten Rings verändert werden. 1 = Volle Helligkeit, 0= aus

#Hilfstabelle, um die Pixelpositionen bei der Generierung aus den Schleifen nicht berechnen zu müssen
pixorder = [0,1,2,3,4,5,6,7,8,9,10,11,0,1,2,3,4,5,6,7,8,9,10,11] # vorwärts
#pixorder = [11,10,9,8,7,6,5,4,3,2,1,0,11,10,9,8,7,6,5,4,3,2,1,0] # rückwärts

#Sequenz beschreibt das Abbild eines kompletten Ringes in seinen Helligkeitswerten
#Dreifach Aufteilung
#sequenz=[100,50,10,5,100,50,10,5,100,50,10,5]
#Zweifach Aufteilung
#sequenz=[100,50,10,5,10,50,100,50,10,5,10,50]
#Einfach Aufteilung
sequenz=[100,100,50,50,10,10,5,5,10,10,50,50]
#Alternativ
#sequenz=[5,5,5,5,10,20,30,40,50,100,50,10]

#Basisfarbe, von der aus die Helligkeitswerte berechnet werden, hier Magenta
red=255
green=0
blue=50


while True:
    for step in range(12):
        for pix in range(12):
            realpix=pixorder[pix+step]
            pixels[realpix]=((red*sequenz[pix]//100),(green*sequenz[pix]//100),(blue*sequenz[pix]//100))
        pixels.show()
        time.sleep(0.08) # Regelt die Geschwindigkeit

from pyswip import Prolog
from PIL import Image

prolog = Prolog()
prolog.consult('kb1.pl')


def detect_type():

    flow = input("🌸 Does plant have flowers? (y/n): ").lower().strip() == 'y'
    if(flow): prolog.assertz("hasFlowers(x)")
    else: prolog.assertz("not(hasFlowers(x))")

    fruit = input("🍋 Does plant have fruits? (y/n): ").lower().strip() == 'y'
    if(fruit): prolog.assertz("hasFruit(x)")
    else: prolog.assertz("not(hasFruit(x))")

    water = input("💧 Does plant have water storage in leaves? (y/n): ").lower().strip() == 'y'
    if(water): prolog.assertz("hasWaterStorage(x)")
    else: prolog.assertz("not(hasWaterStorage(x))")

    result = list(prolog.query("type(x,Z)"))
    type = result[0]['Z']

    #############################

    stem_hight = input("🌴 Is the stem(s) of the plant realtivelt long? (y/n): ").lower().strip() == 'y'
    if(stem_hight): prolog.assertz("hasLongStem(x)")
    else: prolog.assertz("not(hasLongStem(x))")

    bushy = input("💐 Is the plant bushy? (y/n): ").lower().strip() == 'y'
    if(bushy): prolog.assertz("isBushy(x)")
    else: prolog.assertz("not(isBushy(x))")

    result = list(prolog.query("form(x,Z)"))
    form = result[0]['Z']
    print(result[0]['Z'])

    ##############################

    print("🍀 Please pick the shape of the leaf: ")
    print("\t1.Furry, \n\t2.Round, \n\t4.Pointed, \n\t5.None, \n\t7.Feathery, \n\t9.Elliptical, \n\t10.Arrow-like, \n\t13.Heart-shaped, \n\t14.Assymmetrical")
    l_shape=0
    while(l_shape<1 or l_shape>13):
        l_shape = int(input("Leaf shape (number): "))
        if(l_shape<1 & l_shape>13): print("Invalid input. Try again!\n")
    prolog.assertz(f"leafForm(x,'{l_shape}')")

    print("🌿 Sizes of the leaf: ")
    print("\t1.Small, \n\t2.Medium,\n\t3.Large, \n\t4.None ")
    l_size=0
    while(l_size<=0 or l_size>4):
        l_size = int(input("Leaf size (number): "))
        if(l_size<1 & l_size>4): print("Invalid input. Try again!\n")
    prolog.assertz(f"leafSize(x,'{l_size}')")
    
    intrestingLeaf = input("🍁 Does plant have interesting, colored or textured leaf? (y/n): ").lower().strip() == 'y'
    if(intrestingLeaf): prolog.assertz("interestingLeaf(x)")
    else: prolog.assertz("not(interestingLeaf(x))")

    spikes = input("🌵 Does plant have spikes? (y/n): ").lower().strip() == 'y'
    if(spikes): prolog.assertz("hasSpikes(x)")
    else: prolog.assertz("not(hasSpikes(x))")

    ##############################
    result = list(prolog.query("plant(x,Z)"))
    
    if(len(result)>0):
        plant = result[0]['Z']
        
    else: plant="None"
    return plant
    

def showPic(plant):
    f_plant = plant.replace("'", "").replace(" ", "_") #using plant name as file name
    path  = "./pics/{}.jpg".format(f_plant.lower())
    im = Image.open(path)
    im.show() #will open a separate window
    
def main():
    print("DETECTION OF INDOOR PLANT:")
    print("Please answer questions according to the provided options.\n\n")

    plant = detect_type()
    if(plant!="None"):
        print("🌟 Your plant is most probably: 🌟")
        print("\t",plant)
        showPic(plant)
    else: 
        print("😭 Sorry, I could not detect your plant.")

main()
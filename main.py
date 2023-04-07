from pyswip import Prolog
from PIL import Image

prolog = Prolog()
prolog.consult('kb2.pl')

def detect_type2(type1):
    print("Shapes of the leaf: ")
    print("1.Furry, \n2.Round, \n3.Long, \n4.Pointed, \n5.None, \n6.Needle-like, \n7.Feathery, \n8.Wavy, \n9.Elliptical, \n10.Arrow-like, \n11.Lobed, \n12.Split, \n13.Heart-shaped, \n14.Assymmetrical")
    l_shape = input("Leaf shape (number): ")

    print("Sizes of the leaf: ")
    print("1.Small, \n2.Medium,\n3.Large, \n4.None ")
    l_size = input("Leaf size (number): ")

    bushy = input("Is plant bushy?  (yes/no): ")

    stem = input("Size of the stem (high/low): ")

    spikes = input("Plant has spikes? (yes/no): ")

    col_leaf = input("Plant has colored leaf? (yes/no): ")

    plants = []

    query2 = f"plant(Plant, '{type1}', '{l_shape}', '{l_size}', '{bushy}', '{stem}', '{spikes}', '{col_leaf}')"
    if(list(prolog.query(query2))):
        for p in prolog.query(query2):
            plants.append(p['Plant'])
    
    return plants


def detect_type():
    flow = input("Flowers (yes/no): ")
    fruit = input("Fruits (yes/no): ")
    water = input("Water Storage (yes/no): ")
    query = f"type(Type, '{flow}', '{fruit}', '{water}')"

    plants = []
    if(list(prolog.query(query))):
        type1 = list(prolog.query(query))[0]["Type"]
        plants = detect_type2(type1)
    
    return plants

def showPic(plant):
    f_plant = plant.replace("'", "").replace(" ", "_")
    
    path  = "./pics/{}.jpg".format(f_plant.lower()) #
    im = Image.open(path)

    #show image
    im.show()
    
def main():
    print("DETECTION OF INDOOR PLANT:")
    print("Please answer questions according to the provided options.\n\n")
    plants = detect_type()
    if(len(plants)>0):
        print("Your plant is most probably: ")
        for p in plants:
            print("\t",p)
            showPic(p)
    else: 
        print("Sorry, I could not detect your plant.")

main()
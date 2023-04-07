% Type of plant
% (name, flowers, fruit, waterstorage)
type(succulent, no, no, yes).
type(fruiting, _, yes, no).
type(flowering, yes, no, no).
type(decorative_foilage, no, no, no).

% Actual plant name
% plant(name, type, leaf_shape, leaf_size, bushy_or_not, stem_hight, has_spikes, has_colored_leaf)
plant('Bear Paws', succulent, '1', '1', yes, low, no, no).
plant('Panda Plant', decorative_foilage, '2', '2', yes, low, no, yes).
plant('Burro\'s Tail', succulent, '3', '1', no, low, no, no).
plant('Cactus', succulent, '4', '1', no, low, yes, no).
plant('Cactus', succulent, '5', '4', no, low, yes, no).
plant('Aloe Vera', succulent, '4', '2', no, low, yes, no).
plant('Asparagus Fern', decorative_foilage, '6', '1', yes, high, no, yes).
plant('Boston Fern', decorative_foilage, '7', '3', yes, high, no, yes).
plant('Bird\'s Nest Fern', decorative_foilage, '8', '2', yes, low, no, yes).
plant('Calathea', decorative_foilage, '9', '2', yes, low, no, yes).
plant('Cast-Iron Plant', decorative_foilage, '9', '3', yes, low, no, no).
plant('Chinese Evergreen', decorative_foilage, '10', '2', yes, low, no, yes).
plant('Chinese Money Plant', decorative_foilage, '2', '2', yes, low, no, yes).
plant('Peperomia', decorative_foilage, '2', '1', yes, low, no, yes).
plant('Croton', decorative_foilage, '4', '3', yes, low, no, yes).
plant('English Ivy', decorative_foilage, '1', '2', yes, high, no, yes).
plant('Guiana Chestnut', fruiting, '4', '3', no, high, no, no).
plant('Dragon Tree', decorative_foilage, '4', '3', yes, high, no, yes).
plant('Monstera', decorative_foilage, '12', '3', yes, high, no, yes).
plant('Orchid', flowering, '9', '3', no, high, no, no).
plant('Geranium', flowering, '2', '2', no, high, no, yes).
plant('Peace Lilies', flowering, '4', '3', no, low, no, yes).
plant('Anthurium', flowering, '13', '2', no, high, no, yes).
plant('Citrus tree', fruiting, '4', '3', no, high, no, no).
plant('Avocado tree', fruiting, '9', '3', no, high, no, no).
plant('Strawberry', fruiting, '2', '1', no, low, no, yes).
plant('Cyclamen', flowering, '13', '2', yes, low, no, yes).
plant('Jasmine', flowering, '9', '2', yes, high, no, yes).
plant('Begonia', decorative_foliage, '14', '2', yes, low, no, yes).
plant('Azalea', flowering, '9', '2', yes, low, no, yes).
plant('Impatien', flowering, '9', '1', yes, low, no, yes).

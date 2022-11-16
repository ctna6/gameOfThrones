def map_list(listToMap, property):
    """
    Converts a list of dictionaries into a list of the given property.
    """
    return list(map(lambda x: x[property], listToMap))
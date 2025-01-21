def get(data_dict, path, default_value='n/a'):
    temp_dict = data_dict
    for key in path.split('.'):
        if isinstance(temp_dict, dict) and key in temp_dict:
            temp_dict = temp_dict[key]
        else:
            return default_value
    return temp_dict
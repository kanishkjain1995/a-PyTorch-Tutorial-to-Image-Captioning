from utils import create_input_files

if __name__ == '__main__':
    # Create input files (along with word map)
    create_input_files(dataset='flickr30k',
                       karpathy_json_path='./dataset_flickr30k.json',
                       image_folder='./data/flickr30k',
                       captions_per_image=5,
                       min_word_freq=5,
                       output_folder='./data/output',
                       max_len=50)

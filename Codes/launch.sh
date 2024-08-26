# @xjd: Used to launch the program
# 经过测试，发现直接这样运行没有编辑的效果。应该对landmarks进行修改

# seeds=$1
seeds=0

python generate_3D_landmarks.py --seeds=${seeds}

python gen_warped_images.py --outdir=out --network=ffhqrebalanced512-128.pkl --seeds=${seeds}

python gen_inversion_wraped_images.py --outdir=out --network=ffhqrebalanced512-128.pkl --seeds=${seeds}
# python gen_inversion_wraped_images.py --outdir=out --network=ffhqrebalanced512-128.pkl --directions=./editing_direction/fat.npy --seeds=${seeds}
# python gen_inversion_wraped_images.py --outdir=out --network=ffhqrebalanced512-128.pkl --edit_shape=True --directions=./editing_direction/fat.npy --seeds=${seeds}



# source: https://gist.github.com/phatblat/1713458
# Save script's current directory
DIR=$(pwd)

set -e
set -u
set -x


echo "############################"
echo "# Download ImageNet Labels in COCO format"
echo "############################"
echo " http://mscoco.org/external/"
echo " http://mscoco.org/"
echo " https://github.com/pdollar/coco"
echo " To install supporting software run robotics_setup/coco.sh"



if [ ! -d $HOME/datasets ] ; then
  mkdir -p $HOME/datasets/coco
fi

cd $HOME/datasets/coco

# Note that by running this download you agree to microsoft's terms and conditions
# http://mscoco.org/dataset/#download
if [ ! -f $HOME/datasets/coco/ILSVRC2014.zip ] ; then
  curl -O http://mscoco.org/static/annotations/ILSVRC2014.zip
  unzip ILSVRC2014.zip
fi


if [ ! -d $HOME/datasets/ILSVRC12 ] ; then
  mkdir -p $HOME/datasets/ILSVRC12
fi

cd $HOME/datasets/ILSVRC12

if [ ! -f $HOME/datasets/ILSVRC12 ] ; then
  curl -O http://dl.caffe.berkeleyvision.org/caffe_ilsvrc12.tar.gz
  tar -xvzf caffe_ilsvrc12.tar.gz
fi



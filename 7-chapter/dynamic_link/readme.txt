export LD_LIBRARY_PATH=$PWD
将当前目录加入默认路径， 否则main找不到依赖的库文件，
当然也可以将库文件复制到默认路径下

-ldl 运行时动态链接

-lshlib 装载是动态链接

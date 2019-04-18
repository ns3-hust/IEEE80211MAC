# IEEE80211MAC
一、项目简介：
面向IEEE 802.11 MAC层的性能分析与优化等需求，本项目拟致力于验证NS-3的IEEE 802.11 MAC层模型的准确性。本项目通过利用一个简单准确的统一分析框架理论模型，结合不同网络仿真实验，验证NS-3仿真平台IEEE 802.11 MAC层的准确性。本项目的研究成果，将有效支撑NS-3的IEEE 802.11 MAC层模型，对网络研究与设计具有重要的意义。
二、实验内容：
（一）本项目主要设计以下几种仿真场景：
1.	不同的网络饱和状态；
2.	变化的网络系统参数（节点数目、初始退避窗口、最大退避等级）；
3.	基本接入机制与RTS/CTS机制；
4.	自组织网络与基础设施网络。
下面注释每个文档：
adhoc.cc          自组织网络下的仿真脚本
infrastructure.cc 基础设施网络下的仿真脚本
hatDvshatlambda.m 网络从不饱和转变到饱和状态的matlab作图代码
hatDvsW.m         网络总速率与初始退避窗口的matlab作图代码
hatDvsK.m         网络总速率与最大退避等级的matlab作图代码
hatDvsnadocinfrastracture.m 自组织网络与基础设施网络下网络总速率与节点数目的matlab作图代码
throughputvsn.m 自组织网络下网络总速率与节点数目的matlab作图代码      

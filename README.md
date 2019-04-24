# k8s

### 使用方法

> 创建镜像版本列表

    # cat version1.10
    kube-proxy-amd64:v1.10.0
    kube-controller-manager-amd64:v1.10.0
    kube-scheduler-amd64:v1.10.0
    kube-apiserver-amd64:v1.10.0
    kubernetes-dashboard-amd64:v1.8.3
    k8s-dns-dnsmasq-nanny-amd64:1.14.8
    k8s-dns-sidecar-amd64:1.14.8
    k8s-dns-kube-dns-amd64:1.14.8
    etcd-amd64:3.1.12
    flannel:v0.10.0-amd64
    heapster-grafana-amd64:v4.4.3
    heapster-influxdb-amd64:v1.3.3
    heapster-amd64:v1.4.2
    pause-amd64:3.1

> 生成Dockerfile(生成的文件夹为列表后的数字)

    ./run.sh version1.10

### 获取镜像

    ./pull.sh

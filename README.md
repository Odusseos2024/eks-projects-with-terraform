### prj1-eks-resources

backend cluster     :     dev/eks-cluster/terraform.tfstate  
dynamodb table      :     dev-ekscluster

dev/eks-cluster/terraform.tfstate
 
 
### prj2-eks-irsa
 
backend cluster     :     dev/eks-cluster/terraform.tfstate  
dynamodb table      :     dev-ekscluster

backend irsa        :     dev/eks-irsa/terraform.tfstate  
dynamodb table      :     dev-eksirsa
 
 

### prj3-eks-csi
 
backend cluster     :     dev/eks-cluster/terraform.tfstate  
dynamodb table      :     dev-ekscluster
 
backend ebs         :     dev/eks-ebsstorage/terraform.tfstate  
dynamodb table      :     dev-eksebsstorage"
 
backend mgmt app    :     dev/eks-mgmtapp/terraform.tfstate  
dynamodb table      :     dev-eksmgmtapp"



### prj4-eks-users-and-groups

backend cluster     :     dev/eks-users/terraform.tfstate  
dynamodb table      :     dev-eksusers



### prj5-eks-load-balancer-ingress-extdns

backend cluster     :     dev/eks-users/terraform.tfstate  
dynamodb table      :     dev-eksusers

backend cluster     :     dev/eks-lbcontroller/terraform.tfstate  
dynamodb table      :     dev-ekslbcontroller

backend cluster     :     dev/eks-eksexternaldns/terraform.tfstate  
dynamodb table      :     dev-eksexternaldns

backend cluster     :     dev/eks-lbingress/terraform.tfstate  
dynamodb table      :     dev-ekslbingress
 
 
 
### prj6-eks-fargate

backend cluster     :     dev/eks-users/terraform.tfstate  
dynamodb table      :     dev-eksusers
 
backend cluster     :     dev/eks-lbcontroller/terraform.tfstate  
dynamodb table      :     dev-ekslbcontroller
 
backend cluster     :     dev/eks-eksexternaldns/terraform.tfstate  
dynamodb table      :     dev-eksexternaldns
 
backend cluster     :     dev/eks-fargate-profile/terraform.tfstate  
dynamodb table      :     dev-eksfargate-profile
 
backend cluster     :     dev/eks-fargate-profile/terraform.tfstate  
dynamodb table      :     dev-eksfargate-profile
 
backend cluster     :     dev/eks-lbingress/terraform.tfstate  
dynamodb table      :     dev-ekslbingress



### prj7-eks-efs

backend cluster     :     dev/eks-users/terraform.tfstate  
dynamodb table      :     dev-eksusers

backend cluster     :     dev/eks-lbcontroller/terraform.tfstate  
dynamodb table      :     dev-ekslbcontroller

backend cluster     :     dev/eks-eksexternaldns/terraform.tfstate  
dynamodb table      :     dev-eksexternaldns

backend cluster     :     dev/eks-efsstorage/terraform.tfstate  
dynamodb table      :     dev-eksefsstorage

backend cluster     :     dev/eks-efs-sp/terraform.tfstate  
dynamodb table      :     dev-eksefs-sp



### prj8-eks-scaling

backend cluster     :     dev/eks-users/terraform.tfstate  
dynamodb table      :     dev-eksusers
 
backend cluster     :     dev/eks-lbcontroller/terraform.tfstate  
dynamodb table      :     dev-ekslbcontroller
 
backend cluster     :     dev/eks-eksexternaldns/terraform.tfstate  
dynamodb table      :     dev-eksexternaldns
 
backend cluster     :     dev/eks-scaling/terraform.tfstate  
dynamodb table      :     dev-eksscaling



### prj9-eks-logging

backend cluster     :     dev/eks-users/terraform.tfstate  
dynamodb table      :     dev-eksusers

backend cluster     :     dev/eks-lbcontroller/terraform.tfstate  
dynamodb table      :     dev-ekslbcontroller

backend cluster     :     dev/eks-eksexternaldns/terraform.tfstate  
dynamodb table      :     dev-eksexternaldns

backend cluster     :     dev/eks-cw-logging/terraform.tfstate  
dynamodb table      :     dev-ekscw-logging

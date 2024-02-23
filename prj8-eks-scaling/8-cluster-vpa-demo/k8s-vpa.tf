resource "kubectl_manifest" "vpa_resource" {
    yaml_body = <<YAML
apiVersion: autoscaling.k8s.io/v1
kind: VerticalPodAutoscaler
metadata:
  name: my-app-vpa
spec:
  targetRef:
    apiVersion: "apps/v1"
    kind:       Deployment
    name:       vpa-demo-deployment
  updatePolicy:
    updateMode: "Auto"
YAML
}

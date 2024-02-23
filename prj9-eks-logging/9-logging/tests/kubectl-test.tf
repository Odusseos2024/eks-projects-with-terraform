data "kubectl_path_documents" "manifests" {
    pattern = "./manifests/*.yaml"
}

resource "kubectl_manifest" "test" {
    count     = length(data.kubectl_path_documents.manifests.documents)
    yaml_body = element(data.kubectl_path_documents.manifests.documents, count.index)
}

output "documents" {
    description = "Private Node Group Kubernetes Version"
    value = {for doc in kubectl_manifest.test : doc.id => nonsensitive(doc.yaml_body)}
}

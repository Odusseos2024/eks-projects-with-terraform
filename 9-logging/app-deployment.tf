data "kubectl_filename_list" "manifests" {
    pattern = "./sample-app/*.yaml"
}
  
resource "kubectl_manifest" "documents" {
    count     = length(data.kubectl_filename_list.manifests.matches)
    yaml_body = file(element(data.kubectl_filename_list.manifests.matches, count.index))
}

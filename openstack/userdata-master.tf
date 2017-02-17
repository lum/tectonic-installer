data "template_file" "userdata-master" {
  template = "${file("${path.module}/userdata-master.yml")}"

  vars {
    kube_config = "${base64encode(file("${path.root}/../assets/auth/kubeconfig"))}"
  }
}
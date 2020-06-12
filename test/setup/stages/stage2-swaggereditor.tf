module "dev_tools_swagger" {
  source = "github.com/ibm-garage-cloud/terraform-tools-swaggereditor.git"

  cluster_ingress_hostname = module.dev_cluster.ingress_hostname
  cluster_config_file      = module.dev_cluster.config_file_path
  cluster_type             = module.dev_cluster.type_code
  tls_secret_name          = module.dev_cluster.tls_secret_name
  releases_namespace       = module.dev_capture_state.namespace
  image_tag                = "v3.8.0"
  enable_sso               = true
  chart_version            = "1.3.0"
}
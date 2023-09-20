module "S3Buckets" {
  source = "../../CommonModules/S3"
  auth   = local.auth
  env    = var.env
  allBuckets = {
    "stock-market" = {
      "bucket"        = "stock-market-${var.env}",
      "force_destroy" = false
    }, 
    "stock-market-test" = {
      "bucket"        = "stock-market-test-${var.env}",
      "force_destroy" = false
    }
  }
}
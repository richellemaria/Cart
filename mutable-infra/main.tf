module "docdb" {
  source                 = "./vendor/modules/docdb"
  ENV                    = var.ENV
  DOCDB_PORT_NUMBER      = var.DOCDB_PORT_NUMBER
  DOCDB_INSTANCE_TYPE    = var.DOCDB_INSTANCE_TYPE 
  DOCDB_INSTANCE_COUNT   = var.DOCDB_INSTANCE_COUNT
}

module "redis" {
  source                 = "./vendor/modules/redis"
  ENV                    = var.ENV
  REDIS_PORT_NUMBER      = var.REDIS_PORT_NUMBER
  REDIS_INSTANCE_TYPE    = var.REDIS_INSTANCE_TYPE
  REDIS_INSTANCE_COUNT   = var.REDIS_INSTANCE_COUNT
  REDIS_ENGINE_VERSION   = var.REDIS_ENGINE_VERSION

}

module "mysql" {
  source                 = "./vendor/modules/mysql"
  ENV                    = var.ENV
  MYSQL_PORT_NUMBER      = var.MYSQL_PORT_NUMBER
  MYSQL_STORAGE          = var.MYSQL_STORAGE 
  MYSQL_ENGINE_VERSION   = var.MYSQL_ENGINE_VERSION
  MYSQL_INSTANCE_TYPE    = var.MYSQL_INSTANCE_TYPE
}

module "rabbitmq" {
  source                 = "./vendor/modules/rabbitmq"
  ENV                    = var.ENV
  RABBITMQ_PORT_NUMBER   = var. RABBITMQ_PORT_NUMBER
  RABBITMQ_INSTANCE_TYPE = var.RABBITMQ_INSTANCE_TYPE
}

# You cannot variablize this piece of code in the source parameter
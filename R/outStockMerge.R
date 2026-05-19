
#' 清空rds_dms_ods_t_sal_outStock_input
#'
#' @param token

#' @param dms_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' dms_sal_outStock_input_delete()
dms_sal_outStock_input_delete<- function(dms_token) {

  sql=paste0("truncate table rds_dms_ods_t_sal_outStock_input ")

  res=tsda::sql_delete2(token = dms_token,sql_str =sql )
  return(res)
}



#' rds_dms_ods_t_sal_outStockEntry_input清空dms临时表
#'
#' @param token

#' @param dms_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' dms_sal_outStockEntry_input_delete()
dms_sal_outStockEntry_input_delete<- function(dms_token) {

  sql=paste0("truncate table rds_dms_ods_t_sal_outStockEntry_input ")

  res=tsda::sql_delete2(token = dms_token,sql_str =sql )
  return(res)
}



#' 上传DMS表头表数据
#'
#' @param token

#' @param dms_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' dms_sal_outStock_upload()
dms_sal_outStock_upload<- function(dms_token) {

  sql=paste0("exec rds_proc_sal_outStock_insert ")

  res=tsda::sql_update2(token = dms_token,sql_str =sql )
  return(res)
}




#' 上传DMS表体表数据
#'
#' @param token

#' @param dms_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' dms_sal_outStockEntry_upload()
dms_sal_outStockEntry_upload<- function(dms_token) {

  sql=paste0("exec rds_proc_sal_outStockEntry_insert ")

  res=tsda::sql_update2(token = dms_token,sql_str =sql )
  return(res)
}


#' 查询dms 表头更新状态
#'
#' @param token

#' @param dms_token
#'
#' @param FBillNo
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' dms_sal_outStock_view()
dms_sal_outStock_view<- function(dms_token,FBillNo) {

  sql=paste0("exec rds_proc_dms_salOutStock_view  '",FBillNo,"' ")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}



#'  拆分表头表体并更新源单内码
#'
#' @param token

#' @param erp_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' erp_outStockMerge_input_update()
erp_outStockMerge_input_update<- function(erp_token) {

  sql=paste0("exec rds_src_ods_t_sal_outStock_update ")

  res=tsda::sql_update2(token = erp_token,sql_str =sql )
  return(res)
}



#' 查询ERP表体input
#'
#' @param token

#' @param erp_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' erp_outStockEntry_select()
erp_outStockEntry_select<- function(erp_token) {

  sql=paste0("select * from [rds_dms_ods_t_sal_outStockEntry_input] ")

  res=tsda::sql_select2(token = erp_token,sql = sql)
  return(res)
}



#' 查询ERP表头input数据
#'
#' @param token

#' @param erp_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' erp_outStock_select()
erp_outStock_select<- function(erp_token) {

  sql=paste0("select * from  [rds_dms_ods_t_sal_outStock_input] ")

  res=tsda::sql_select2(token = erp_token,sql = sql)
  return(res)
}



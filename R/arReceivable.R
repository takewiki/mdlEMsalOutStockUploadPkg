
#' 清空rds_dms_ods_t_ar_receivable_input
#'
#' @param token

#' @param dms_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' dms_ar_receivable_input_delete()
dms_ar_receivable_input_delete<- function(dms_token) {

  sql=paste0("truncate table rds_dms_ods_t_ar_receivable_input ")

  res=tsda::sql_delete2(token = dms_token,sql_str =sql )
  return(res)
}



#' rds_dms_ods_t_ar_receivableEntry_input清空dms临时表
#'
#' @param token

#' @param dms_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' dms_ar_receivableEntry_input_delete()
dms_ar_receivableEntry_input_delete<- function(dms_token) {

  sql=paste0("truncate table rds_dms_ods_t_ar_receivableEntry_input ")

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
#' dms_ar_receivable_upload()
dms_ar_receivable_upload<- function(dms_token) {

  sql=paste0("exec rds_proc_ar_receivable_insert ")

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
#' dms_ar_receivableEntry_upload()
dms_ar_receivableEntry_upload<- function(dms_token) {

  sql=paste0("exec rds_proc_ar_receivableEntry_insert ")

  res=tsda::sql_update2(token = dms_token,sql_str =sql )
  return(res)
}


#' 查询dms 表头更新状态
#'
#' @param token

#' @param dms_token
#'
#' @param FBillNo
#' @param FStartDate
#' @param FEndDate
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' dms_ar_receivable_view()
dms_ar_receivable_view<- function(dms_token,FBillNo,FStartDate,FEndDate) {

  sql=paste0("exec rds_proc_dms_arReceivable_view  '",FBillNo,"','",FStartDate,"','",FEndDate,"' ")

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
#' erp_arReceivable_input_update()
erp_arReceivable_input_update<- function(erp_token) {

  sql=paste0("exec rds_src_ods_t_ar_receivable_update ")

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
#' erp_arReceivableEntry_select()
erp_arReceivableEntry_select<- function(erp_token) {

  sql=paste0("select * from [rds_dms_ods_t_ar_receivableEntry_input] ")

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
#' erp_arReceivable_select()
erp_arReceivable_select<- function(erp_token) {

  sql=paste0("select * from  [rds_dms_ods_t_ar_receivable_input] ")

  res=tsda::sql_select2(token = erp_token,sql = sql)
  return(res)
}




#' 清空rds_dms_ods_t_sal_outStock_input
#'
#' @param token

#' @param dms_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' salOutStock_input_delete()
salOutStock_input_delete<- function(dms_token) {

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

#' rds_dms_ods_t_sal_outStockEntry_input 清空erp临时表
#'
#' @param token

#' @param erp_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' erp_sal_outStockEntry_input_delete()
erp_sal_outStockEntry_input_delete<- function(erp_token) {

  sql=paste0("truncate table rds_dms_ods_t_sal_outStockEntry_input ")

  res=tsda::sql_delete2(token = erp_token,sql_str =sql )
  return(res)
}




#' 上传rds_dms_ods_t_sal_outStock表数据
#'
#' @param token

#' @param dms_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' salOutStock_insert()
salOutStock_insert<- function(dms_token) {

  sql=paste0("exec rds_proc_sal_outStock_insert ")

  res=tsda::sql_update2(token = dms_token,sql_str =sql )
  return(res)
}




#' 上传rds_dms_ods_t_sal_outStockEntry表数据
#'
#' @param token

#' @param dms_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' salOutStockEntry_insert()
salOutStockEntry_insert<- function(dms_token) {

  sql=paste0("exec rds_proc_sal_outStockEntry_insert ")

  res=tsda::sql_update2(token = dms_token,sql_str =sql )
  return(res)
}


#' 查询salOutStock
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
#' salOutStock_select()
salOutStock_select<- function(dms_token,FBillNo) {

  sql=paste0("exec rds_proc_dms_salOutStock_view  '",FBillNo,"' ")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}



#' 查询DMS,salOutStockEntry
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
#' dms_salOutStockEntry_select()
dms_salOutStockEntry_select<- function(dms_token,FBillNo) {

  sql=paste0("exec rds_proc_dms_salOutStockEntry_view  '",FBillNo,"' ")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}


#'  更新rds_dms_ods_t_sal_outStockEntry_input源单内码
#'
#' @param token

#' @param erp_token
#'
#' @return 无返回值
#' @export
#'
#' @examples
#' erp_salOutStock_input_update()
erp_salOutStock_input_update<- function(erp_token) {

  sql=paste0("update a set a.FSOEntryId=b.fentryid
,A.FEntity_Link_FSBillId=b.fid
,A.FEntity_Link_FSId=b.fentryid ,
FEntity_Link_FRuleId='SaleOrder-OutStock',
FEntity_Link_FSTableName='T_SAL_ORDERENTRY'
from rds_dms_ods_t_sal_outStockEntry_input a
inner join RDS_VW_SALORDERID b on a.fsoorderno=b.fbillno and a.fsofseq=b.fseq ")

  res=tsda::sql_update2(token = erp_token,sql_str =sql )
  return(res)
}



#' 查询ERP,salOutStockEntry
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

  sql=paste0("select * from rds_dms_ods_t_sal_outStockEntry_input ")

  res=tsda::sql_select2(token = erp_token,sql = sql)
  return(res)
}




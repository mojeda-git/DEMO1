@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'View Root Empleados'
define root view entity Z_I_EMPLEADO
  as select from ztb_rap_empleado
{
  key e_number,
      e_name,
      e_department,
      status,
      job_code,
      job_title,
      email,
      start_date,
      end_date
}

@EndUserText.label: 'Projection view empleado'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity Z_C_EMPLEADO
  as projection on Z_I_EMPLEADO
{
  key e_number     as EmployeeNumber,
      e_name       as EmployeeName,
      e_department as EmployeeDepartment,
      status       as EmployeeStatus,
      job_code     as JobCode,
      job_title    as JobTitle,
      email        as Email,
      start_date   as StartDate,
      end_date     as EndDate
}

﻿using System;
using Abp.Domain.Entities;
using System.ComponentModel.DataAnnotations.Schema;

namespace ZNV.Timesheet.Employee
{
    [Table("HREmployee")]
    public class HREmployee : Entity<string>
    {
        [Column("UserID")]
        public override string Id { get; set; }
        public virtual string EmployeeCode { get; set; }
        public virtual string EmployeeName { get; set; }
        public virtual DateTime? EntryDate { get; set; }
        public virtual DateTime? ExitDate { get; set; }
        public virtual string DeptCode { get; set; }
        public virtual string Email { get; set; }
        [NotMapped]
        public virtual string DeptName { get; set; }
    }
}

﻿using System;
using Abp.Domain.Repositories;

namespace ZNV.Timesheet.RoleManagement
{
    public interface IRoleDepartmentRepository : IRepository<RoleDepartment, int>
    {
    }
}

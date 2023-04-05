package com.afwsamples.testdpc.policy.systemupdatepolicy;
 class SystemUpdatePolicyFragment$Period {
    java.time.MonthDay mEnd;
    java.time.MonthDay mStart;

    public SystemUpdatePolicyFragment$Period()
    {
        return;
    }

    public SystemUpdatePolicyFragment$Period(java.time.MonthDay p1, java.time.MonthDay p2)
    {
        this.mStart = p1;
        this.mEnd = p2;
        return;
    }

    public java.time.LocalDate getEndDate()
    {
        return this.mEnd.atYear(java.time.LocalDate.now().getYear());
    }

    public java.time.LocalDate getStartDate()
    {
        return this.mStart.atYear(java.time.LocalDate.now().getYear());
    }

    public void set(java.time.LocalDate p3, java.time.LocalDate p4)
    {
        this.mStart = java.time.MonthDay.of(p3.getMonth(), p3.getDayOfMonth());
        this.mEnd = java.time.MonthDay.of(p4.getMonth(), p4.getDayOfMonth());
        return;
    }

    public android.app.admin.FreezePeriod toFreezePeriod()
    {
        return new android.app.admin.FreezePeriod(this.mStart, this.mEnd);
    }

    public String toString()
    {
        java.time.format.DateTimeFormatter v0 = java.time.format.DateTimeFormatter.ofPattern("MMM dd");
        return new StringBuilder().append(this.mStart.format(v0)).append(" - ").append(this.mEnd.format(v0)).toString();
    }
}

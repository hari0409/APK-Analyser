package com.afwsamples.testdpc.profilepolicy.apprestrictions;
public class ManagedConfigurationsFragment$RestrictionEntryEditDeleteArrayAdapter extends com.afwsamples.testdpc.common.EditDeleteArrayAdapter {
    final synthetic com.afwsamples.testdpc.profilepolicy.apprestrictions.ManagedConfigurationsFragment this$0;

    public ManagedConfigurationsFragment$RestrictionEntryEditDeleteArrayAdapter(com.afwsamples.testdpc.profilepolicy.apprestrictions.ManagedConfigurationsFragment p1, android.content.Context p2, java.util.List p3, com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnEditButtonClickListener p4, com.afwsamples.testdpc.common.EditDeleteArrayAdapter$OnDeleteButtonClickListener p5)
    {
        this.this$0 = p1;
        super(p2, p3, p4, p5);
        return;
    }

    protected String getDisplayName(android.content.RestrictionEntry p2)
    {
        return p2.getKey();
    }

    protected bridge synthetic String getDisplayName(Object p2)
    {
        return this.getDisplayName(((android.content.RestrictionEntry) p2));
    }
}

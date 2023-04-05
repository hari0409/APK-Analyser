package androidx.print;
 class PrintHelper$PrintUriAdapter$1$1 implements android.os.CancellationSignal$OnCancelListener {
    final synthetic androidx.print.PrintHelper$PrintUriAdapter$1 this$2;

    PrintHelper$PrintUriAdapter$1$1(androidx.print.PrintHelper$PrintUriAdapter$1 p1)
    {
        this.this$2 = p1;
        return;
    }

    public void onCancel()
    {
        this.this$2.this$1.cancelLoad();
        this.this$2.cancel(0);
        return;
    }
}

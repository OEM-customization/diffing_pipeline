.class public Lsun/nio/ch/NativeThread;
.super Ljava/lang/Object;
.source "NativeThread.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native current()J
.end method

.method public static native signal(J)V
.end method
